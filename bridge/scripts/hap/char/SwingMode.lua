return {
    value = {
        Disabled = 0,
        Enabled = 1
    },
    ---New a ``SwingMode`` characteristic.
    ---@param iid integer Instance ID.
    ---@param read fun(request:HapCharacteristicReadRequest, context?:any): any, HapError
    ---@param write fun(request:HapCharacteristicWriteRequest, value:any, context?:any): HapError
    ---@return HapCharacteristic characteristic
    new = function (iid, read, write)
        return {
            format = "UInt8",
            iid = iid,
            type = "SwingMode",
            props = {
                readable = true,
                writable = true,
                supportsEventNotification = true,
                ble = {
                    supportsBroadcastNotification = true,
                    supportsDisconnectedNotification = true
                }
            },
            constraints = {
                minVal = 0,
                maxVal = 1,
                stepVal = 1
            },
            cbs = {
                read = read,
                write = write
            }
        }
    end
}
