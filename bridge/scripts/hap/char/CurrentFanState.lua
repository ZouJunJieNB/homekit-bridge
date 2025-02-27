return {
    value = {
        Inactive = 0,
        Idle = 1,
        BlowingAir = 2,
    },
    ---New a ``CurrentFanState`` characteristic.
    ---@param iid integer Instance ID.
    ---@param read fun(request:HapCharacteristicReadRequest, context?:any): any, HapError
    ---@return HapCharacteristic characteristic
    new = function (iid, read)
        return {
            format = "UInt8",
            iid = iid,
            type = "CurrentFanState",
            props = {
                readable = true,
                writable = false,
                supportsEventNotification = true,
                ble = {
                    supportsBroadcastNotification = true,
                    supportsDisconnectedNotification = true
                }
            },
            constraints = {
                minVal = 0,
                maxVal = 2,
                stepVal = 1
            },
            cbs = {
                read = read
            }
        }
    end
}
