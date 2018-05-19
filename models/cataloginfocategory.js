/* jshint indent: 1 */

module.exports = function (sequelize, DataTypes) {
	var cataloginfocategory = sequelize.define('cataloginfocategory', {
		id: {
			type: DataTypes.BIGINT,
			allowNull: false,
			primaryKey: true,
			autoIncrement: true
		},
		parentId: {
			type: DataTypes.BIGINT,
			allowNull: true
		},
		name: {
			type: DataTypes.STRING(255),
			allowNull: true
		},
		level: {
			type: DataTypes.INTEGER(11),
			allowNull: true
		},
		trail: {
			type: DataTypes.STRING(255),
			allowNull: true
		},
		keywords: {
			type: DataTypes.STRING(1000),
			allowNull: true
		},
		isLeaf: {
			type: DataTypes.BOOLEAN,
			allowNull: true
		},
		ignoreInheritedAttributes: {
			type: DataTypes.BOOLEAN,
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
			tableName: 'cataloginfocategory'
		});
	cataloginfocategory.associate = function (models) {
		models.cataloginfocategory.hasMany(models.cataloginfocategoryattribute);
		models.cataloginfocategory.hasMany(models.cataloginfo);
	}
	return cataloginfocategory;
};
