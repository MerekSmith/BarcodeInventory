/* jshint indent: 1 */

module.exports = function (sequelize, DataTypes) {
	var unit = sequelize.define('unit', {
		id: {
			type: DataTypes.BIGINT,
			allowNull: false,
			primaryKey: true,
			autoIncrement: true
		},
		loadId: {
			type: DataTypes.BIGINT,
			allowNull: true
		},
		proNumber: {
			type: DataTypes.STRING(255),
			allowNull: true
		},
		description: {
			type: DataTypes.STRING(255),
			allowNull: true
		},
		itemCondition: {
			type: DataTypes.INTEGER(11),
			allowNull: true
		},
		dateCreated: {
			type: DataTypes.DATE,
			allowNull: true
		},
		itemConditionInfoId: {
			type: DataTypes.BIGINT,
			allowNull: true
		},
		purchaseType: {
			type: DataTypes.STRING(255),
			allowNull: true
		},
		closed: {
			type: DataTypes.BOOLEAN,
			allowNull: true
		},
		alphaId: {
			type: DataTypes.STRING(20),
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
			tableName: 'unit'
		});
	unit.associate = function (models) {
		models.unit.hasMany(models.item);
		models.unit.belongsTo(models.load);
		models.unit.belongsTo(models.purchasetype);
	}
	return unit;
};
