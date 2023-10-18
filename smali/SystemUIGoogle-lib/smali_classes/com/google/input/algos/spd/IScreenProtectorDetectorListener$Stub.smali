.class public abstract Lcom/google/input/algos/spd/IScreenProtectorDetectorListener$Stub;
.super Landroid/os/Binder;
.source ""

# interfaces
.implements Lcom/google/input/algos/spd/IScreenProtectorDetectorListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    invoke-virtual {p0}, Landroid/os/Binder;->markVintfStability()V

    sget-object v0, Lcom/google/input/algos/spd/IScreenProtectorDetectorListener;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public final getMaxTransactionId()I
    .locals 0

    const p0, 0xfffffe

    return p0
.end method

.method public final getTransactionName(I)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x1

    if-eq p1, p0, :cond_0

    packed-switch p1, :pswitch_data_0

    const/4 p0, 0x0

    goto :goto_0

    :pswitch_0
    const-string p0, "getInterfaceVersion"

    goto :goto_0

    :pswitch_1
    const-string p0, "getInterfaceHash"

    goto :goto_0

    :cond_0
    const-string p0, "onScreenProtectorDetectorStatusUpdated"

    :goto_0
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0xfffffe
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3

    sget-object v0, Lcom/google/input/algos/spd/IScreenProtectorDetectorListener;->DESCRIPTOR:Ljava/lang/String;

    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_0
    const/4 v2, 0x2

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

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :sswitch_2
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const-string p0, "notfrozen"

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :cond_1
    sget-object p1, Lcom/google/input/algos/spd/ScreenProtectorDetectorPacket;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/input/algos/spd/ScreenProtectorDetectorPacket;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    check-cast p0, Lcom/google/android/systemui/screenprotector/ScreenProtectorNotifierService$2;

    iget-object p2, p0, Lcom/google/android/systemui/screenprotector/ScreenProtectorNotifierService$2;->this$0:Lcom/google/android/systemui/screenprotector/ScreenProtectorNotifierService;

    iget-object p2, p2, Lcom/google/android/systemui/screenprotector/ScreenProtectorNotifierService;->mContext:Landroid/content/Context;

    const-string p3, "screen_protector_shared_perf"

    const/4 p4, 0x0

    invoke-virtual {p2, p3, p4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p2

    const-string p3, "notification_enabled"

    invoke-interface {p2, p3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-nez p2, :cond_2

    const-string p0, "ScreenProtectorNotifierService"

    const-string p1, "Skip detector\'s packet due to notification disabled by user."

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lcom/google/android/systemui/screenprotector/ScreenProtectorNotifierService$2;->this$0:Lcom/google/android/systemui/screenprotector/ScreenProtectorNotifierService;

    iget-object p2, p2, Lcom/google/android/systemui/screenprotector/ScreenProtectorNotifierService;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string p3, "touch_sensitivity_enabled"

    invoke-static {p2, p3, p4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p2

    if-eqz p2, :cond_3

    move p4, v1

    :cond_3
    if-eqz p4, :cond_4

    iget-byte p2, p1, Lcom/google/input/algos/spd/ScreenProtectorDetectorPacket;->status:B

    if-nez p2, :cond_4

    iget-object p0, p0, Lcom/google/android/systemui/screenprotector/ScreenProtectorNotifierService$2;->this$0:Lcom/google/android/systemui/screenprotector/ScreenProtectorNotifierService;

    invoke-static {p0, v2}, Lcom/google/android/systemui/screenprotector/ScreenProtectorNotifierService;->-$$Nest$mupdateScreenProtectorNotification(Lcom/google/android/systemui/screenprotector/ScreenProtectorNotifierService;I)V

    goto :goto_0

    :cond_4
    if-nez p4, :cond_5

    iget-byte p1, p1, Lcom/google/input/algos/spd/ScreenProtectorDetectorPacket;->status:B

    if-ne p1, v1, :cond_5

    iget-object p0, p0, Lcom/google/android/systemui/screenprotector/ScreenProtectorNotifierService$2;->this$0:Lcom/google/android/systemui/screenprotector/ScreenProtectorNotifierService;

    invoke-static {p0, v1}, Lcom/google/android/systemui/screenprotector/ScreenProtectorNotifierService;->-$$Nest$mupdateScreenProtectorNotification(Lcom/google/android/systemui/screenprotector/ScreenProtectorNotifierService;I)V

    :cond_5
    :goto_0
    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        0xfffffe -> :sswitch_2
        0xffffff -> :sswitch_1
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
