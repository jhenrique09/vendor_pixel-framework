.class public abstract Lvendor/google/wireless_charger/IWirelessChargerRtxStatusCallback$Stub;
.super Landroid/os/Binder;
.source ""

# interfaces
.implements Lvendor/google/wireless_charger/IWirelessChargerRtxStatusCallback;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    invoke-virtual {p0}, Landroid/os/Binder;->markVintfStability()V

    sget-object v0, Lvendor/google/wireless_charger/IWirelessChargerRtxStatusCallback;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public final onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3

    sget-object v0, Lvendor/google/wireless_charger/IWirelessChargerRtxStatusCallback;->DESCRIPTOR:Ljava/lang/String;

    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_0
    sparse-switch p1, :sswitch_data_0

    if-eq p1, v1, :cond_1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    :sswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :sswitch_1
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :sswitch_2
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    check-cast p0, Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger;

    iget-object p0, p0, Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger;->mCallbackIdentifier:Ljava/lang/String;

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :cond_1
    sget-object p1, Lvendor/google/wireless_charger/RtxStatusInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lvendor/google/wireless_charger/RtxStatusInfo;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    check-cast p0, Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger;

    iget-object p2, p0, Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger;->mLock:Ljava/lang/Object;

    monitor-enter p2

    :try_start_0
    new-instance p3, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger;->mRtxStatusCallbacks:Ljava/util/ArrayList;

    invoke-direct {p3, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger$ReverseChargingChangeListener;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean p3, Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger;->DEBUG:Z

    if-eqz p3, :cond_2

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "onRtxStatusChanged() RtxStatusInfo : "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "ReverseWirelessCharger"

    invoke-static {p4, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    iget-byte p4, p1, Lvendor/google/wireless_charger/RtxStatusInfo;->mode:B

    const-string v0, "key_rtx_mode"

    invoke-virtual {p3, v0, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p4, "key_accessory_type"

    iget v0, p1, Lvendor/google/wireless_charger/RtxStatusInfo;->acctype:I

    invoke-virtual {p3, p4, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p4, "key_rtx_connection"

    iget-boolean v0, p1, Lvendor/google/wireless_charger/RtxStatusInfo;->chgConnected:Z

    invoke-virtual {p3, p4, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p4, "key_rtx_iout"

    iget v0, p1, Lvendor/google/wireless_charger/RtxStatusInfo;->iout:I

    invoke-virtual {p3, p4, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p4, "key_rtx_vout"

    iget v0, p1, Lvendor/google/wireless_charger/RtxStatusInfo;->vout:I

    invoke-virtual {p3, p4, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p4, "key_rtx_level"

    iget v0, p1, Lvendor/google/wireless_charger/RtxStatusInfo;->level:I

    invoke-virtual {p3, p4, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p4, "key_reason_type"

    iget-byte v0, p1, Lvendor/google/wireless_charger/RtxStatusInfo;->reason:B

    invoke-virtual {p3, p4, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    check-cast p2, Lcom/google/android/systemui/reversecharging/ReverseChargingController$$ExternalSyntheticLambda4;

    iget-object p2, p2, Lcom/google/android/systemui/reversecharging/ReverseChargingController$$ExternalSyntheticLambda4;->f$0:Lcom/google/android/systemui/reversecharging/ReverseChargingController;

    invoke-virtual {p2, p3}, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->onReverseStateChanged(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_3
    return v1

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    nop

    :sswitch_data_0
    .sparse-switch
        0xfffffe -> :sswitch_2
        0xffffff -> :sswitch_1
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
