.class public abstract Lvendor/google/wireless_charger/IWirelessChargerInfoCallback$Stub;
.super Landroid/os/Binder;
.source ""

# interfaces
.implements Lvendor/google/wireless_charger/IWirelessChargerInfoCallback;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    invoke-virtual {p0}, Landroid/os/Binder;->markVintfStability()V

    sget-object v0, Lvendor/google/wireless_charger/IWirelessChargerInfoCallback;->DESCRIPTOR:Ljava/lang/String;

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

    sget-object v0, Lvendor/google/wireless_charger/IWirelessChargerInfoCallback;->DESCRIPTOR:Ljava/lang/String;

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

    const-string p0, "2d5029583960b40ada539137df45bfa46a5b1333"

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :cond_1
    sget-object p1, Lvendor/google/wireless_charger/AlignInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lvendor/google/wireless_charger/AlignInfo;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    check-cast p0, Lcom/google/android/systemui/dreamliner/WirelessChargerImpl$WirelessChargerInfoCallback;

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/dreamliner/WirelessChargerImpl$WirelessChargerInfoCallback;->alignInfoChanged(Lvendor/google/wireless_charger/AlignInfo;)V

    return v1

    :sswitch_data_0
    .sparse-switch
        0xfffffe -> :sswitch_2
        0xffffff -> :sswitch_1
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
