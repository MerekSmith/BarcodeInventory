/* jshint indent: 1 */

module.exports = function (sequelize, DataTypes) {
	var securityuser = sequelize.define('securityuser', {
		id: {
			type: DataTypes.BIGINT,
			allowNull: false,
			primaryKey: true,
			autoIncrement: true
		},
		firstName: {
			type: DataTypes.STRING(255),
			allowNull: true
		},
		lastName: {
			type: DataTypes.STRING(255),
			allowNull: true
		},
		userName: {
			type: DataTypes.STRING(255),
			allowNull: true
		},
		password: {
			type: DataTypes.STRING(255),
			allowNull: true
		},
		active: {
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
			tableName: 'securityuser'
		});
	securityuser.associate = function (models) {
		models.securityuser.hasMany(models.cataloginfo);
		models.securityuser.hasMany(models.item);
	}
	return securityuser;
};
