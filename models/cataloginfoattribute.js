/* jshint indent: 1 */

module.exports = function (sequelize, DataTypes) {
	var cataloginfoattribute = sequelize.define('cataloginfoattribute', {
		id: {
			type: DataTypes.BIGINT,
			allowNull: false,
			primaryKey: true,
			autoIncrement: true
		},
		description: {
			type: DataTypes.STRING(255),
			allowNull: true
		},
		valuesCSV: {
			type: DataTypes.STRING(255),
			allowNull: true
		},
		valuesRegex: {
			type: DataTypes.TEXT,
			allowNull: true
		},
		uiType: {
			type: DataTypes.STRING(255),
			allowNull: true
		},
		validationErrorMessage: {
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
			tableName: 'cataloginfoattribute'
		});
	cataloginfoattribute.associate = function (models) {
		models.cataloginfoattribute.hasMany(models.cataloginfoattributevalue);
		models.cataloginfoattribute.hasMany(models.cataloginfocategoryattribute);
	};
	return cataloginfoattribute;
};
