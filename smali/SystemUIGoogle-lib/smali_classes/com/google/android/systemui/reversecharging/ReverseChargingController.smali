.class public final Lcom/google/android/systemui/reversecharging/ReverseChargingController;
.super Landroid/content/BroadcastReceiver;
.source ""

# interfaces
.implements Lcom/android/systemui/statusbar/policy/CallbackController;


# static fields
.field public static final DEBUG:Z

.field public static final DURATION_TO_ADVANCED_ACCESSORY_DEVICE_RECONNECTED_TIME_OUT:J

.field public static final DURATION_TO_ADVANCED_PHONE_RECONNECTED_TIME_OUT:J

.field public static final DURATION_TO_ADVANCED_PLUS_ACCESSORY_DEVICE_RECONNECTED_TIME_OUT:J

.field public static final DURATION_TO_REVERSE_AC_TIME_OUT:J

.field public static final DURATION_TO_REVERSE_RX_REMOVAL_TIME_OUT:J

.field public static final DURATION_TO_REVERSE_TIME_OUT:J

.field public static final DURATION_WAIT_NFC_SERVICE:J


# instance fields
.field public final mAccessoryDeviceRemovedTimeoutAlarmAction:Lcom/google/android/systemui/reversecharging/ReverseChargingController$$ExternalSyntheticLambda3;

.field public final mAlarmManager:Landroid/app/AlarmManager;

.field final mBatteryStateChangeCallback:Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;

.field public final mBgExecutor:Ljava/util/concurrent/Executor;

.field public final mBootCompleteCache:Lcom/android/systemui/BootCompleteCache;

.field public final mBootCompleteListener:Lcom/google/android/systemui/reversecharging/ReverseChargingController$$ExternalSyntheticLambda2;

.field mBootCompleted:Z

.field public final mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field public mCacheIsReverseSupported:Z

.field public final mChangeCallbacks:Ljava/util/ArrayList;

.field public final mCheckNfcConflictWithUsbAudioAlarmAction:Lcom/google/android/systemui/reversecharging/ReverseChargingController$$ExternalSyntheticLambda3;

.field public final mContext:Landroid/content/Context;

.field mCurrentRtxMode:I

.field public mCurrentRtxReceiverType:I

.field final mDoesNfcConflictWithUsbAudio:Z

.field public final mDoesNfcConflictWithWlc:Z

.field public mIsReverseSupported:Z

.field mIsUsbPlugIn:Z

.field mLevel:I

.field public final mMainExecutor:Ljava/util/concurrent/Executor;

.field public mName:Ljava/lang/String;

.field public final mNfcInterfaceToken:Landroid/os/IBinder;

.field final mNfcUsbProductIds:[I

.field final mNfcUsbVendorIds:[I

.field public mPluggedAc:Z

.field public mPowerSave:Z

.field public mProvidingBattery:Z

.field public final mReconnectedTimeoutAlarmAction:Lcom/google/android/systemui/reversecharging/ReverseChargingController$$ExternalSyntheticLambda3;

.field mRestoreUsbNfcPollingMode:Z

.field public mRestoreWlcNfcPollingMode:Z

.field mReverse:Z

.field public mReverseStartTime:J

.field public final mRtxChargerManagerOptional:Ljava/util/Optional;

.field public final mRtxFinishAlarmAction:Lcom/google/android/systemui/reversecharging/ReverseChargingController$$ExternalSyntheticLambda3;

.field public final mRtxFinishRxFullAlarmAction:Lcom/google/android/systemui/reversecharging/ReverseChargingController$$ExternalSyntheticLambda3;

.field public mRtxLevel:I

.field mSkinThermalEventListener:Landroid/os/IThermalEventListener;

.field public mStartReconnected:Z

.field public mStopReverseAtAcUnplug:Z

.field public final mThermalService:Landroid/os/IThermalService;

.field public final mUsbManagerOptional:Ljava/util/Optional;

.field public mUseRxRemovalTimeOut:Z

.field public mWirelessCharging:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const-string v0, "ReverseChargingControl"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->DEBUG:Z

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    sput-wide v3, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->DURATION_TO_REVERSE_TIME_OUT:J

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->DURATION_TO_REVERSE_AC_TIME_OUT:J

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1e

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    sput-wide v1, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->DURATION_TO_REVERSE_RX_REMOVAL_TIME_OUT:J

    const-wide/16 v1, 0x78

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    sput-wide v3, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->DURATION_TO_ADVANCED_ACCESSORY_DEVICE_RECONNECTED_TIME_OUT:J

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    sput-wide v3, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->DURATION_TO_ADVANCED_PHONE_RECONNECTED_TIME_OUT:J

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    sput-wide v1, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->DURATION_TO_ADVANCED_PLUS_ACCESSORY_DEVICE_RECONNECTED_TIME_OUT:J

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->DURATION_WAIT_NFC_SERVICE:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/broadcast/BroadcastDispatcher;Ljava/util/Optional;Landroid/app/AlarmManager;Ljava/util/Optional;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lcom/android/systemui/BootCompleteCache;Landroid/os/IThermalService;)V
    .locals 3

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mNfcInterfaceToken:Landroid/os/IBinder;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mChangeCallbacks:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mCurrentRtxMode:I

    iput-boolean v0, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mIsUsbPlugIn:Z

    iput v0, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mCurrentRtxReceiverType:I

    iput-boolean v0, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mProvidingBattery:Z

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mReverseStartTime:J

    new-instance v1, Lcom/google/android/systemui/reversecharging/ReverseChargingController$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/google/android/systemui/reversecharging/ReverseChargingController$$ExternalSyntheticLambda2;-><init>(Lcom/google/android/systemui/reversecharging/ReverseChargingController;)V

    iput-object v1, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mBootCompleteListener:Lcom/google/android/systemui/reversecharging/ReverseChargingController$$ExternalSyntheticLambda2;

    new-instance v1, Lcom/google/android/systemui/reversecharging/ReverseChargingController$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, v0}, Lcom/google/android/systemui/reversecharging/ReverseChargingController$$ExternalSyntheticLambda3;-><init>(Lcom/google/android/systemui/reversecharging/ReverseChargingController;I)V

    iput-object v1, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mRtxFinishAlarmAction:Lcom/google/android/systemui/reversecharging/ReverseChargingController$$ExternalSyntheticLambda3;

    new-instance v0, Lcom/google/android/systemui/reversecharging/ReverseChargingController$$ExternalSyntheticLambda3;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/google/android/systemui/reversecharging/ReverseChargingController$$ExternalSyntheticLambda3;-><init>(Lcom/google/android/systemui/reversecharging/ReverseChargingController;I)V

    iput-object v0, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mRtxFinishRxFullAlarmAction:Lcom/google/android/systemui/reversecharging/ReverseChargingController$$ExternalSyntheticLambda3;

    new-instance v0, Lcom/google/android/systemui/reversecharging/ReverseChargingController$$ExternalSyntheticLambda3;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/google/android/systemui/reversecharging/ReverseChargingController$$ExternalSyntheticLambda3;-><init>(Lcom/google/android/systemui/reversecharging/ReverseChargingController;I)V

    iput-object v0, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mCheckNfcConflictWithUsbAudioAlarmAction:Lcom/google/android/systemui/reversecharging/ReverseChargingController$$ExternalSyntheticLambda3;

    new-instance v0, Lcom/google/android/systemui/reversecharging/ReverseChargingController$$ExternalSyntheticLambda3;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lcom/google/android/systemui/reversecharging/ReverseChargingController$$ExternalSyntheticLambda3;-><init>(Lcom/google/android/systemui/reversecharging/ReverseChargingController;I)V

    iput-object v0, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mReconnectedTimeoutAlarmAction:Lcom/google/android/systemui/reversecharging/ReverseChargingController$$ExternalSyntheticLambda3;

    new-instance v0, Lcom/google/android/systemui/reversecharging/ReverseChargingController$$ExternalSyntheticLambda3;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Lcom/google/android/systemui/reversecharging/ReverseChargingController$$ExternalSyntheticLambda3;-><init>(Lcom/google/android/systemui/reversecharging/ReverseChargingController;I)V

    iput-object v0, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mAccessoryDeviceRemovedTimeoutAlarmAction:Lcom/google/android/systemui/reversecharging/ReverseChargingController$$ExternalSyntheticLambda3;

    new-instance v0, Lcom/google/android/systemui/reversecharging/ReverseChargingController$1;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/reversecharging/ReverseChargingController$1;-><init>(Lcom/google/android/systemui/reversecharging/ReverseChargingController;)V

    iput-object v0, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mBatteryStateChangeCallback:Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;

    iput-object p1, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iput-object p3, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mRtxChargerManagerOptional:Ljava/util/Optional;

    iput-object p4, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f050027

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mDoesNfcConflictWithWlc:Z

    iput-object p5, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mUsbManagerOptional:Ljava/util/Optional;

    iput-object p6, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mMainExecutor:Ljava/util/concurrent/Executor;

    iput-object p7, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mBgExecutor:Ljava/util/concurrent/Executor;

    iput-object p8, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mBootCompleteCache:Lcom/android/systemui/BootCompleteCache;

    iput-object p9, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mThermalService:Landroid/os/IThermalService;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f030043

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mNfcUsbVendorIds:[I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x7f030042

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p3

    iput-object p3, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mNfcUsbProductIds:[I

    array-length p2, p2

    array-length p3, p3

    if-ne p2, p3, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f050026

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mDoesNfcConflictWithUsbAudio:Z

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "VendorIds and ProductIds must be the same length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final addCallback(Lcom/google/android/systemui/reversecharging/ReverseChargingController$ReverseChargingChangeCallback;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mChangeCallbacks:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-boolean v0, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mReverse:Z

    iget v1, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mRtxLevel:I

    iget-object p0, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mName:Ljava/lang/String;

    check-cast p1, Lcom/google/android/systemui/statusbar/policy/BatteryControllerImplGoogle;

    invoke-virtual {p1, v1, p0, v0}, Lcom/google/android/systemui/statusbar/policy/BatteryControllerImplGoogle;->onReverseChargingChanged(ILjava/lang/String;Z)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final bridge synthetic addCallback(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/systemui/reversecharging/ReverseChargingController$ReverseChargingChangeCallback;

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->addCallback(Lcom/google/android/systemui/reversecharging/ReverseChargingController$ReverseChargingChangeCallback;)V

    return-void
.end method

.method public final cancelRtxTimer(I)V
    .locals 1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object p0, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mAccessoryDeviceRemovedTimeoutAlarmAction:Lcom/google/android/systemui/reversecharging/ReverseChargingController$$ExternalSyntheticLambda3;

    invoke-virtual {p1, p0}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object p0, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mReconnectedTimeoutAlarmAction:Lcom/google/android/systemui/reversecharging/ReverseChargingController$$ExternalSyntheticLambda3;

    invoke-virtual {p1, p0}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object p0, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mRtxFinishRxFullAlarmAction:Lcom/google/android/systemui/reversecharging/ReverseChargingController$$ExternalSyntheticLambda3;

    invoke-virtual {p1, p0}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object p0, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mRtxFinishAlarmAction:Lcom/google/android/systemui/reversecharging/ReverseChargingController$$ExternalSyntheticLambda3;

    invoke-virtual {p1, p0}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    :goto_0
    return-void
.end method

.method public final checkAndChangeNfcPollingAgainstUsbAudioDevice(ZLandroid/hardware/usb/UsbDevice;)V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mNfcUsbVendorIds:[I

    array-length v2, v2

    if-ge v1, v2, :cond_2

    invoke-virtual {p2}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mNfcUsbVendorIds:[I

    aget v3, v3, v1

    if-ne v2, v3, :cond_1

    invoke-virtual {p2}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mNfcUsbProductIds:[I

    aget v3, v3, v1

    if-ne v2, v3, :cond_1

    xor-int/lit8 p2, p1, 0x1

    iput-boolean p2, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mRestoreUsbNfcPollingMode:Z

    iget-boolean p2, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mRestoreWlcNfcPollingMode:Z

    if-nez p2, :cond_0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->enableNfcPollingMode(Z)V

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public final enableNfcPollingMode(Z)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x1000

    :goto_0
    sget-boolean v0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "Change NFC reader mode to flags: "

    const-string v1, "ReverseChargingControl"

    invoke-static {v0, p1, v1}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;ILjava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mBgExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/systemui/reversecharging/ReverseChargingController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/google/android/systemui/reversecharging/ReverseChargingController$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/systemui/reversecharging/ReverseChargingController;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final fireReverseChanged()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mChangeCallbacks:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mMainExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/google/android/systemui/reversecharging/ReverseChargingController$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0}, Lcom/google/android/systemui/reversecharging/ReverseChargingController$$ExternalSyntheticLambda6;-><init>(Lcom/google/android/systemui/reversecharging/ReverseChargingController;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final handleIntentForReverseCharging(Landroid/content/Intent;)V
    .locals 7

    invoke-virtual {p0}, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->isReverseSupported()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v2, 0x64

    const-string v3, "ReverseChargingControl"

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_c

    iget-boolean v0, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mPluggedAc:Z

    const-string v1, "level"

    invoke-virtual {p1, v1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    int-to-float v1, v1

    const/high16 v6, 0x42c80000    # 100.0f

    mul-float/2addr v1, v6

    const-string v6, "scale"

    invoke-virtual {p1, v6, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mLevel:I

    const-string v1, "plugged"

    invoke-virtual {p1, v1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v4, :cond_1

    move v1, v4

    goto :goto_0

    :cond_1
    move v1, v5

    :goto_0
    iput-boolean v1, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mPluggedAc:Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "handleIntentForReverseCharging(): rtx="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mReverse:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " wlc="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mWirelessCharging:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " plgac="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ac="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mPluggedAc:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " acrtx="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mStopReverseAtAcUnplug:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " extra="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " this="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean p1, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mReverse:Z

    if-eqz p1, :cond_3

    iget-boolean v1, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mWirelessCharging:Z

    if-eqz v1, :cond_3

    sget-boolean p1, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->DEBUG:Z

    if-eqz p1, :cond_2

    const-string p1, "handleIntentForReverseCharging(): wireless charging, stop"

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/16 p1, 0x66

    invoke-virtual {p0, p1, v5}, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->setReverseStateInternal(IZ)V

    return-void

    :cond_3
    if-eqz p1, :cond_5

    if-eqz v0, :cond_5

    iget-boolean v1, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mPluggedAc:Z

    if-nez v1, :cond_5

    iget-boolean v1, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mStopReverseAtAcUnplug:Z

    if-eqz v1, :cond_5

    sget-boolean p1, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->DEBUG:Z

    if-eqz p1, :cond_4

    const-string p1, "handleIntentForReverseCharging(): wired charging, stop"

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iput-boolean v5, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mStopReverseAtAcUnplug:Z

    const/16 p1, 0x6a

    invoke-virtual {p0, p1, v5}, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->setReverseStateInternal(IZ)V

    return-void

    :cond_5
    if-nez p1, :cond_a

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mPluggedAc:Z

    if-eqz v0, :cond_a

    iget-object p1, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "settings_key_reverse_charging_auto_turn_on"

    invoke-static {p1, v0, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v4, :cond_6

    move v5, v4

    :cond_6
    if-nez v5, :cond_7

    const-string p0, "auto turn on is disabled"

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_7
    iget-boolean p1, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mBootCompleted:Z

    if-nez p1, :cond_8

    const-string p0, "skip auto turn on"

    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_8
    sget-boolean p1, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->DEBUG:Z

    if-eqz p1, :cond_9

    const-string p1, "handleIntentForReverseCharging(): wired charging, start"

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    iput-boolean v4, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mStopReverseAtAcUnplug:Z

    const/4 p1, 0x3

    invoke-virtual {p0, p1, v4}, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->setReverseStateInternal(IZ)V

    return-void

    :cond_a
    if-eqz p1, :cond_18

    invoke-virtual {p0}, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->isLowBattery()Z

    move-result p1

    if-eqz p1, :cond_18

    sget-boolean p1, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->DEBUG:Z

    if-eqz p1, :cond_b

    const-string p1, "handleIntentForReverseCharging(): lower then battery threshold, stop"

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    const/4 p1, 0x4

    invoke-virtual {p0, p1, v5}, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->setReverseStateInternal(IZ)V

    return-void

    :cond_c
    const-string v1, "android.os.action.POWER_SAVE_MODE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    iget-boolean p1, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mReverse:Z

    if-eqz p1, :cond_18

    iget-boolean p1, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mPowerSave:Z

    if-eqz p1, :cond_18

    const-string p1, "handleIntentForReverseCharging(): power save, stop"

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x69

    invoke-virtual {p0, p1, v5}, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->setReverseStateInternal(IZ)V

    return-void

    :cond_d
    const-string v1, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v6, "device"

    if-eqz v1, :cond_16

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/hardware/usb/UsbDevice;

    if-nez p1, :cond_e

    const-string p1, "handleIntentForReverseCharging() UsbDevice is null!"

    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v5, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mIsUsbPlugIn:Z

    return-void

    :cond_e
    iget-boolean v0, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mDoesNfcConflictWithUsbAudio:Z

    if-eqz v0, :cond_f

    invoke-virtual {p0, v5, p1}, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->checkAndChangeNfcPollingAgainstUsbAudioDevice(ZLandroid/hardware/usb/UsbDevice;)V

    :cond_f
    move v0, v5

    :goto_1
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    move-result v1

    if-ge v0, v1, :cond_11

    invoke-virtual {p1, v0}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/usb/UsbInterface;->getInterfaceClass()I

    move-result v1

    if-ne v1, v4, :cond_10

    move v0, v4

    goto :goto_2

    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_11
    move v0, v5

    :goto_2
    move v1, v5

    :goto_3
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getConfigurationCount()I

    move-result v6

    if-ge v1, v6, :cond_13

    invoke-virtual {p1, v1}, Landroid/hardware/usb/UsbDevice;->getConfiguration(I)Landroid/hardware/usb/UsbConfiguration;

    move-result-object v6

    invoke-virtual {v6}, Landroid/hardware/usb/UsbConfiguration;->getMaxPower()I

    move-result v6

    if-ge v6, v2, :cond_12

    move p1, v4

    goto :goto_4

    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_13
    move p1, v5

    :goto_4
    if-eqz v0, :cond_15

    if-nez p1, :cond_14

    goto :goto_5

    :cond_14
    move v4, v5

    :cond_15
    :goto_5
    iput-boolean v4, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mIsUsbPlugIn:Z

    iget-boolean p1, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mReverse:Z

    if-eqz p1, :cond_18

    if-eqz v4, :cond_18

    const/16 p1, 0x6c

    invoke-virtual {p0, p1, v5}, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->setReverseStateInternal(IZ)V

    const-string p0, "handleIntentForReverseCharging(): stop reverse charging because USB-C plugin!"

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_16
    const-string v1, "android.hardware.usb.action.USB_DEVICE_DETACHED"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-boolean v0, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mDoesNfcConflictWithUsbAudio:Z

    if-eqz v0, :cond_17

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/hardware/usb/UsbDevice;

    if-eqz p1, :cond_17

    invoke-virtual {p0, v4, p1}, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->checkAndChangeNfcPollingAgainstUsbAudioDevice(ZLandroid/hardware/usb/UsbDevice;)V

    :cond_17
    iput-boolean v5, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mIsUsbPlugIn:Z

    :cond_18
    :goto_6
    return-void
.end method

.method public final init(Lcom/android/systemui/statusbar/policy/BatteryController;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->isSystemUser()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p1, "ReverseChargingControl"

    const-string v0, "Skip initialization for non system user"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mCacheIsReverseSupported:Z

    iput-boolean v1, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mIsReverseSupported:Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mBatteryStateChangeCallback:Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    iput-boolean v1, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mCacheIsReverseSupported:Z

    iput-boolean v1, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mReverse:Z

    const/4 p1, -0x1

    iput p1, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mRtxLevel:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mName:Ljava/lang/String;

    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.hardware.usb.action.USB_DEVICE_DETACHED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    invoke-virtual {v0, p0, p1}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    iget-object p1, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mBootCompleteCache:Lcom/android/systemui/BootCompleteCache;

    iget-object v0, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mBootCompleteListener:Lcom/google/android/systemui/reversecharging/ReverseChargingController$$ExternalSyntheticLambda2;

    check-cast p1, Lcom/android/systemui/BootCompleteCacheImpl;

    invoke-virtual {p1, v0}, Lcom/android/systemui/BootCompleteCacheImpl;->addListener(Lcom/android/systemui/BootCompleteCache$BootCompleteListener;)Z

    iget-object p1, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mRtxChargerManagerOptional:Ljava/util/Optional;

    invoke-virtual {p1}, Ljava/util/Optional;->isPresent()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mRtxChargerManagerOptional:Ljava/util/Optional;

    invoke-virtual {p1}, Ljava/util/Optional;->isPresent()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mBgExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/google/android/systemui/reversecharging/ReverseChargingController$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, v1}, Lcom/google/android/systemui/reversecharging/ReverseChargingController$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/systemui/reversecharging/ReverseChargingController;Z)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    const-string p1, "ReverseChargingControl"

    const-string v0, "setRtxMode(): rtx not available"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object p1, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mRtxChargerManagerOptional:Ljava/util/Optional;

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger;

    new-instance v0, Landroidx/core/view/ViewCompat$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroidx/core/view/ViewCompat$$ExternalSyntheticLambda0;-><init>()V

    iget-object v1, p1, Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object p1, p1, Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger;->mIsDockPresentCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    iget-object p1, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mRtxChargerManagerOptional:Ljava/util/Optional;

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger;

    new-instance v0, Landroidx/core/view/ViewCompat$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroidx/core/view/ViewCompat$$ExternalSyntheticLambda0;-><init>()V

    iget-object v2, p1, Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_1
    iget-object p1, p1, Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger;->mRtxInformationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-object p1, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mRtxChargerManagerOptional:Ljava/util/Optional;

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger;

    new-instance v0, Lcom/google/android/systemui/reversecharging/ReverseChargingController$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/reversecharging/ReverseChargingController$$ExternalSyntheticLambda4;-><init>(Lcom/google/android/systemui/reversecharging/ReverseChargingController;)V

    iget-object v1, p1, Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_2
    iget-object p1, p1, Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger;->mRtxStatusCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object p1, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mSkinThermalEventListener:Landroid/os/IThermalEventListener;

    if-nez p1, :cond_2

    new-instance p1, Lcom/google/android/systemui/reversecharging/ReverseChargingController$SkinThermalEventListener;

    invoke-direct {p1, p0}, Lcom/google/android/systemui/reversecharging/ReverseChargingController$SkinThermalEventListener;-><init>(Lcom/google/android/systemui/reversecharging/ReverseChargingController;)V

    iput-object p1, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mSkinThermalEventListener:Landroid/os/IThermalEventListener;

    :cond_2
    iget-object p1, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mThermalService:Landroid/os/IThermalService;

    iget-object p0, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mSkinThermalEventListener:Landroid/os/IThermalEventListener;

    const/4 v0, 0x3

    invoke-interface {p1, p0, v0}, Landroid/os/IThermalService;->registerThermalEventListenerWithType(Landroid/os/IThermalEventListener;I)Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string p1, "ReverseChargingControl"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Could not register thermal event listener, exception: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catchall_0
    move-exception p0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw p0

    :catchall_2
    move-exception p0

    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw p0

    :cond_3
    :goto_1
    return-void
.end method

.method public final isLowBattery()Z
    .locals 3

    iget-object v0, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "advanced_battery_usage_amount"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x5

    iget v1, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mLevel:I

    if-gt v1, v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The battery is lower than threshold turn off reverse charging ! level : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mLevel:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", threshold : "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ReverseChargingControl"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isReverseSupported()Z
    .locals 4

    iget-boolean v0, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mCacheIsReverseSupported:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mIsReverseSupported:Z

    return p0

    :cond_0
    iget-object v0, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mRtxChargerManagerOptional:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mRtxChargerManagerOptional:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger;

    invoke-virtual {v0}, Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger;->initHALInterface()V

    iget-object v0, v0, Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger;->mWirelessCharger:Lvendor/google/wireless_charger/IWirelessCharger;

    if-eqz v0, :cond_1

    :try_start_0
    check-cast v0, Lvendor/google/wireless_charger/IWirelessCharger$Stub$Proxy;

    invoke-virtual {v0}, Lvendor/google/wireless_charger/IWirelessCharger$Stub$Proxy;->isRtxSupported()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "ReverseWirelessCharger"

    const-string v3, "isRtxSupported fail: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    iput-boolean v1, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mIsReverseSupported:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mCacheIsReverseSupported:Z

    return v1

    :cond_2
    sget-boolean p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->DEBUG:Z

    if-eqz p0, :cond_3

    const-string p0, "ReverseChargingControl"

    const-string v0, "isReverseSupported(): mRtxChargerManagerOptional is not present!"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return v1
.end method

.method public final logReverseStartEvent(I)V
    .locals 3

    sget-boolean v0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "logReverseStartEvent: "

    const-string v1, "ReverseChargingControl"

    invoke-static {v0, p1, v1}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;ILjava/lang/String;)V

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mReverseStartTime:J

    iget p0, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mLevel:I

    sget-boolean v0, Lcom/google/android/systemui/reversecharging/ReverseChargingMetrics;->DEBUG:Z

    new-instance v0, Landroid/frameworks/stats/VendorAtom;

    invoke-direct {v0}, Landroid/frameworks/stats/VendorAtom;-><init>()V

    const-string v1, ""

    iput-object v1, v0, Landroid/frameworks/stats/VendorAtom;->reverseDomainName:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/frameworks/stats/VendorAtomValue;

    iput-object v1, v0, Landroid/frameworks/stats/VendorAtom;->values:[Landroid/frameworks/stats/VendorAtomValue;

    const v2, 0x186c5

    iput v2, v0, Landroid/frameworks/stats/VendorAtom;->atomId:I

    invoke-static {p1}, Landroid/frameworks/stats/VendorAtomValue;->intValue(I)Landroid/frameworks/stats/VendorAtomValue;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    iget-object p1, v0, Landroid/frameworks/stats/VendorAtom;->values:[Landroid/frameworks/stats/VendorAtomValue;

    invoke-static {p0}, Landroid/frameworks/stats/VendorAtomValue;->intValue(I)Landroid/frameworks/stats/VendorAtomValue;

    move-result-object p0

    const/4 v1, 0x1

    aput-object p0, p1, v1

    invoke-static {v0}, Lcom/google/android/systemui/reversecharging/ReverseChargingMetrics;->reportVendorAtom(Landroid/frameworks/stats/VendorAtom;)V

    return-void
.end method

.method public final logReverseStopEvent(I)V
    .locals 5

    sget-boolean v0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "logReverseStopEvent: "

    const-string v1, "ReverseChargingControl"

    invoke-static {v0, p1, v1}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;ILjava/lang/String;)V

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget v2, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mLevel:I

    iget-wide v3, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mReverseStartTime:J

    sub-long/2addr v0, v3

    const-wide/16 v3, 0x3e8

    div-long/2addr v0, v3

    sget-boolean p0, Lcom/google/android/systemui/reversecharging/ReverseChargingMetrics;->DEBUG:Z

    new-instance p0, Landroid/frameworks/stats/VendorAtom;

    invoke-direct {p0}, Landroid/frameworks/stats/VendorAtom;-><init>()V

    const-string v3, ""

    iput-object v3, p0, Landroid/frameworks/stats/VendorAtom;->reverseDomainName:Ljava/lang/String;

    const/4 v3, 0x3

    new-array v3, v3, [Landroid/frameworks/stats/VendorAtomValue;

    iput-object v3, p0, Landroid/frameworks/stats/VendorAtom;->values:[Landroid/frameworks/stats/VendorAtomValue;

    const v4, 0x186c6

    iput v4, p0, Landroid/frameworks/stats/VendorAtom;->atomId:I

    invoke-static {p1}, Landroid/frameworks/stats/VendorAtomValue;->intValue(I)Landroid/frameworks/stats/VendorAtomValue;

    move-result-object p1

    const/4 v4, 0x0

    aput-object p1, v3, v4

    iget-object p1, p0, Landroid/frameworks/stats/VendorAtom;->values:[Landroid/frameworks/stats/VendorAtomValue;

    invoke-static {v2}, Landroid/frameworks/stats/VendorAtomValue;->intValue(I)Landroid/frameworks/stats/VendorAtomValue;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, p1, v3

    iget-object p1, p0, Landroid/frameworks/stats/VendorAtom;->values:[Landroid/frameworks/stats/VendorAtomValue;

    new-instance v2, Landroid/frameworks/stats/VendorAtomValue;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Landroid/frameworks/stats/VendorAtomValue;-><init>(ILjava/lang/Object;)V

    const/4 v0, 0x2

    aput-object v2, p1, v0

    invoke-static {p0}, Lcom/google/android/systemui/reversecharging/ReverseChargingMetrics;->reportVendorAtom(Landroid/frameworks/stats/VendorAtom;)V

    return-void
.end method

.method public final onAlarmRtxFinish(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onAlarmRtxFinish(): rtx=0, reason: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ReverseChargingControl"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->setReverseStateInternal(IZ)V

    return-void
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-virtual {p0, p2}, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->handleIntentForReverseCharging(Landroid/content/Intent;)V

    return-void
.end method

.method public onReverseStateChanged(Landroid/os/Bundle;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onReverseStateChanged(): rtx="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "key_rtx_mode"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " bundle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " this="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ReverseChargingControl"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mBgExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/systemui/reversecharging/ReverseChargingController$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1}, Lcom/google/android/systemui/reversecharging/ReverseChargingController$$ExternalSyntheticLambda5;-><init>(Lcom/google/android/systemui/reversecharging/ReverseChargingController;Landroid/os/Bundle;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public playSound(Landroid/media/Ringtone;)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Landroid/media/Ringtone;->setStreamType(I)V

    invoke-virtual {p1}, Landroid/media/Ringtone;->play()V

    :cond_0
    return-void
.end method

.method public final removeCallback(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lcom/google/android/systemui/reversecharging/ReverseChargingController$ReverseChargingChangeCallback;

    iget-object v0, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mChangeCallbacks:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final setReverseStateInternal(IZ)V
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->isReverseSupported()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setReverseStateInternal(): rtx="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ReverseChargingControl"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_3

    iget-boolean v0, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mReverse:Z

    if-nez v0, :cond_3

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->logReverseStartEvent(I)V

    iget-boolean p1, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mPowerSave:Z

    if-eqz p1, :cond_1

    const/16 p1, 0x68

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->logReverseStopEvent(I)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->isLowBattery()Z

    move-result p1

    if-eqz p1, :cond_2

    const/16 p1, 0x64

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->logReverseStopEvent(I)V

    return-void

    :cond_2
    iget-boolean p1, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mIsUsbPlugIn:Z

    if-eqz p1, :cond_4

    const/16 p1, 0x6b

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->logReverseStopEvent(I)V

    return-void

    :cond_3
    invoke-virtual {p0, p1}, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->logReverseStopEvent(I)V

    :cond_4
    iget-boolean p1, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mReverse:Z

    if-eq p2, p1, :cond_8

    const/4 p1, 0x0

    if-eqz p2, :cond_5

    iget-boolean v0, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mDoesNfcConflictWithWlc:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mRestoreWlcNfcPollingMode:Z

    if-nez v0, :cond_5

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->enableNfcPollingMode(Z)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mRestoreWlcNfcPollingMode:Z

    :cond_5
    iput-boolean p2, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mReverse:Z

    if-eqz p2, :cond_6

    sget-wide v2, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->DURATION_TO_REVERSE_TIME_OUT:J

    invoke-virtual {p0, v2, v3, p1}, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->setRtxTimer(JI)V

    :cond_6
    iget-object p1, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mRtxChargerManagerOptional:Ljava/util/Optional;

    invoke-virtual {p1}, Ljava/util/Optional;->isPresent()Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mBgExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/google/android/systemui/reversecharging/ReverseChargingController$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p2}, Lcom/google/android/systemui/reversecharging/ReverseChargingController$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/systemui/reversecharging/ReverseChargingController;Z)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_7
    const-string p0, "setRtxMode(): rtx not available"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    :goto_0
    return-void
.end method

.method public final setRtxTimer(JI)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p3

    if-eqz v1, :cond_4

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v3, v0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v4, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    add-long v5, v1, p1

    const-string v7, "ReverseChargingControl"

    iget-object v8, v0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mAccessoryDeviceRemovedTimeoutAlarmAction:Lcom/google/android/systemui/reversecharging/ReverseChargingController$$ExternalSyntheticLambda3;

    const/4 v9, 0x0

    invoke-virtual/range {v3 .. v9}, Landroid/app/AlarmManager;->setExact(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    goto :goto_0

    :cond_1
    iget-object v10, v0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v11, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    add-long v12, v1, p1

    const-string v14, "ReverseChargingControl"

    iget-object v15, v0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mReconnectedTimeoutAlarmAction:Lcom/google/android/systemui/reversecharging/ReverseChargingController$$ExternalSyntheticLambda3;

    const/16 v16, 0x0

    invoke-virtual/range {v10 .. v16}, Landroid/app/AlarmManager;->setExact(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    goto :goto_0

    :cond_2
    iget-object v1, v0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v2, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    add-long v3, v3, p1

    const-string v5, "ReverseChargingControl"

    iget-object v6, v0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mCheckNfcConflictWithUsbAudioAlarmAction:Lcom/google/android/systemui/reversecharging/ReverseChargingController$$ExternalSyntheticLambda3;

    const/4 v7, 0x0

    move-object v0, v1

    move v1, v2

    move-wide v2, v3

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setExact(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    goto :goto_0

    :cond_3
    iget-object v8, v0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v9, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    add-long v10, v1, p1

    const-string v12, "ReverseChargingControl"

    iget-object v13, v0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mRtxFinishRxFullAlarmAction:Lcom/google/android/systemui/reversecharging/ReverseChargingController$$ExternalSyntheticLambda3;

    const/4 v14, 0x0

    invoke-virtual/range {v8 .. v14}, Landroid/app/AlarmManager;->setExact(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    goto :goto_0

    :cond_4
    iget-object v1, v0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v2, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    add-long v3, v3, p1

    const-string v5, "ReverseChargingControl"

    iget-object v6, v0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mRtxFinishAlarmAction:Lcom/google/android/systemui/reversecharging/ReverseChargingController$$ExternalSyntheticLambda3;

    const/4 v7, 0x0

    move-object v0, v1

    move v1, v2

    move-wide v2, v3

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setExact(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    :goto_0
    return-void
.end method
