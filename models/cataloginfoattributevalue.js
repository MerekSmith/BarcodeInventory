/* jshint indent: 1 */

module.exports = function (sequelize, DataTypes) {
	var cataloginfoattributevalue = sequelize.define('cataloginfoattributevalue', {
		id: {
			type: DataTypes.BIGINT,
			allowNull: false,
			primaryKey: true,
			autoIncrement: true
		},
		// catalogInfoId: {
		// 	type: DataTypes.BIGINT,
		// 	allowNull: true,
		// 	foreignKey: true
		// },
		// catalogInfoAttributeId: {
		// 	type: DataTypes.BIGINT,
		// 	allowNull: true
		// },
		value: {
			type: DataTypes.STRING(255),
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
			tableName: 'cataloginfoattributevalue'
		});
	cataloginfoattributevalue.associate = function (models) {
		models.cataloginfoattributevalue.belongsTo(models.cataloginfoattribute);
		models.cataloginfoattributevalue.belongsTo(models.cataloginfo);
	};
	return cataloginfoattributevalue;
};
