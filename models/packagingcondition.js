/* jshint indent: 1 */

module.exports = function (sequelize, DataTypes) {
	var packagingcondition = sequelize.define('packagingcondition', {
		id: {
			type: DataTypes.INTEGER(11),
			allowNull: false,
			primaryKey: true,
			autoIncrement: true
		},
		description: {
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
			tableName: 'packagingcondition'
		});
	packagingcondition.associate = function (models) {
		models.packagingcondition.hasMany(models.item)
	}
	return packagingcondition;
};
