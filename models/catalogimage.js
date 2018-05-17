/* jshint indent: 1 */

module.exports = function (sequelize, DataTypes) {
	var catalogimage = sequelize.define('catalogimage', {
		id: {
			type: DataTypes.BIGINT,
			allowNull: false,
			primaryKey: true,
			autoIncrement: true
		},
		CatalogInfo: {
			type: DataTypes.BIGINT,
			allowNull: true
		},
		imagePath: {
			type: DataTypes.TEXT,
			allowNull: true
		},
		main: {
			type: DataTypes.INTEGER(1),
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
			tableName: 'catalogimage'
		});
		
	catalogimage.associate = function (models) {
		models.catalogimage.belongsTo(models.cataloginfo);
	};

	return catalogimage;
};
