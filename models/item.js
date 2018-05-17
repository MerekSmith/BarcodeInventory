/* jshint indent: 1 */

module.exports = function (sequelize, DataTypes) {
	var item = sequelize.define('item', {
		id: {
			type: DataTypes.BIGINT,
			allowNull: false,
			primaryKey: true,
			autoIncrement: true
		},
		itemCondition: {
			type: DataTypes.STRING(255),
			allowNull: true
		},
		packagingCondition: {
			type: DataTypes.STRING(255),
			allowNull: true
		},
		itemType: {
			type: DataTypes.STRING(255),
			allowNull: true
		},
		quantityReceived: {
			type: DataTypes.DECIMAL,
			allowNull: true
		},
		appraisalPrice: {
			type: DataTypes.DECIMAL,
			allowNull: true
		},
		retailPrice: {
			type: DataTypes.DECIMAL,
			allowNull: true
		},
		dateCreated: {
			type: DataTypes.DATE,
			allowNull: true
		},
		attribute: {
			type: DataTypes.BIGINT,
			allowNull: true
		},
		controlNumber: {
			type: DataTypes.STRING(15),
			allowNull: true
		},
		claimPrice: {
			type: DataTypes.DECIMAL,
			allowNull: true
		},
		isFood: {
			type: DataTypes.BOOLEAN,
			allowNull: true
		},
		isEBTEligible: {
			type: DataTypes.BOOLEAN,
			allowNull: true
		},
		controlScanOnly: {
			type: DataTypes.BOOLEAN,
			allowNull: true
		},
		createdBy: {
			type: DataTypes.BIGINT,
			allowNull: true
		},
		createdAt: {
			type: DataTypes.DATE,
			field: 'beginTime',
			defaultValue: sequelize.literal('NOW()')
		},
		updatedAt: {
			type: DataTypes.DATE,
			field: 'beginTime',
			defaultValue: sequelize.literal('NOW()')
		}
	}, {
			tableName: 'item'
		});
	item.associate = function (models) {
		models.item.hasMany(models.itemimage);
		models.item.belongsTo(models.cataloginfo);
		models.item.belongsTo(models.itemconditioninfo);
		models.item.belongsTo(models.unit);
		models.item.belongsTo(models.packagingcondition);
		models.item.belongsTo(models.itemtype);
		models.item.belongsTo(models.securityuser);
	}
	return item;
};
