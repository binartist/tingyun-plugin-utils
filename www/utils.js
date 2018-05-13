var utils = {};

utils.setUserId = function (userId, success, error) {
    console.log('utils setUserId === ' + userId);

    cordova.exec(
        success,
        error,
        'UtilsPlugin',
        'setUserId', [userId]
    );
};

module.exports = utils;