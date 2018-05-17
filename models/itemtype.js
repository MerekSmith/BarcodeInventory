/* jshint indent: 1 */

module.exports = function (sequelize, DataTypes) {
	var itemtype = sequelize.define('itemtype', {
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
			tableName: 'itemtype'
		});
	itemtype.associate = function (models) {
		models.itemtype.hasMany(models.item)
	}
	return itemtype;
};
