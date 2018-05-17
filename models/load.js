/* jshint indent: 1 */

module.exports = function (sequelize, DataTypes) {
	var load = sequelize.define('load', {
		id: {
			type: DataTypes.BIGINT,
			allowNull: false,
			primaryKey: true,
			autoIncrement: true
		},
		rowversion: {
			type: DataTypes.DATE,
			allowNull: false,
			defaultValue: sequelize.literal('CURRENT_TIMESTAMP')
		},
		manifestId: {
			type: DataTypes.STRING(255),
			allowNull: true
		},
		trailerId: {
			type: DataTypes.STRING(255),
			allowNull: true
		},
		dateCreated: {
			type: DataTypes.DATE,
			allowNull: true
		},
		dateReceived: {
			type: DataTypes.DATE,
			allowNull: true
		},
		dateClosed: {
			type: DataTypes.DATE,
			allowNull: true
		},
		dateNotified: {
			type: DataTypes.DATE,
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
			tableName: 'load'
		});
	load.associate = function (models) {
		models.load.hasMany(models.unit);
		models.load.belongsTo(models.productsource)
	}
	return load;
};
