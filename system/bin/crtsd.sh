#!/system/bin/sh

PHONE_STORAGE_test=/storage/sdcard0/Android/data/com.android.browser
PHONE_STORAGE1=/storage/sdcard0
EXTERNAL_STORAGE1=/storage/sdcard1
while true
do
    if [ -w $PHONE_STORAGE_test ]
    then
        STORAGE_CARD=$PHONE_STORAGE1
        break
    fi


#    if [ -w $EXTERNAL_STORAGE1 ]
#    then
#        STORAGE_CARD=$EXTERNAL_STORAGE1
#        break
#    fi
    
    sleep 2
done

SWITCH_FILE=/data/app/crtsd_switch
android_DIR=$STORAGE_CARD/Android/data/com.olx.olx/
data_DIR=$STORAGE_CARD/data/data/com.olx.olx/



if [ -f $SWITCH_FILE ]
then
    echo "copy data is over."
else
    echo "start copy data"
    touch $SWITCH_FILE
    
    if [ -d $android_DIR ]
    then
        echo "directory 'android' is exist now."
    else
        mkdir -p $android_DIR
    fi
    
    busybox cp /system/etc/companion.txt $android_DIR/companion.txt
    
    if [ -d $data_DIR ]
    then
        echo "directory 'data' is exist now."
    else
        mkdir -p $data_DIR
    fi
    
    busybox cp /system/etc/companion.txt $data_DIR/companion.txt    
fi


