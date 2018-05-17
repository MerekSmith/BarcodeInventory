/* jshint indent: 1 */

module.exports = function (sequelize, DataTypes) {
	var cataloginfo = sequelize.define('cataloginfo', {
		id: {
			type: DataTypes.BIGINT,
			allowNull: false,
			primaryKey: true,
			autoIncrement: true
		},
		categoryId: {
			type: DataTypes.BIGINT,
			allowNull: true
		},
		// unitOfMeasureId: {
		// 	type: DataTypes.BIGINT,
		// 	allowNull: true
		// },
		title: {
			type: DataTypes.STRING(80),
			allowNull: true
		},
		description: {
			type: DataTypes.TEXT,
			allowNull: true
		},
		msrp: {
			type: DataTypes.DECIMAL(10,2),
			allowNull: true
		},
		internalNumber: {
			type: DataTypes.STRING(10),
			allowNull: true
		},
		upc: {
			type: DataTypes.STRING(13),
			allowNull: true
		},
		isbn10: {
			type: DataTypes.STRING(10),
			allowNull: true
		},
		isbn13: {
			type: DataTypes.STRING(13),
			allowNull: true
		},
		asin: {
			type: DataTypes.STRING(10),
			allowNull: true
		},
		plu: {
			type: DataTypes.STRING(5),
			allowNull: true
		},
		model: {
			type: DataTypes.STRING(255),
			allowNull: true
		},
		barcode: {
			type: DataTypes.STRING(255),
			allowNull: true
		},
		keywords: {
			type: DataTypes.STRING(1000),
			allowNull: true
		},
		manufacturer: {
			type: DataTypes.STRING(255),
			allowNull: true
		},
		upcManufacturerCode: {
			type: DataTypes.STRING(5),
			allowNull: true
		},
		taxable: {
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
			tableName: 'cataloginfo'
		});
	cataloginfo.associate = function (models) {
		models.cataloginfo.hasMany(models.cataloginfoattributevalue);
		models.cataloginfo.hasMany(models.catalogimage);
		models.cataloginfo.belongsTo(models.securityuser);
		models.cataloginfo.belongsTo(models.cataloginfocategory);
	}
	return cataloginfo;
};
