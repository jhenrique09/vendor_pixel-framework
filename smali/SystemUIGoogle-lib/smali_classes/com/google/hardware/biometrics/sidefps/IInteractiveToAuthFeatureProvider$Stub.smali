.class public abstract Lcom/google/hardware/biometrics/sidefps/IInteractiveToAuthFeatureProvider$Stub;
.super Landroid/os/Binder;
.source ""

# interfaces
.implements Lcom/google/hardware/biometrics/sidefps/IInteractiveToAuthFeatureProvider;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    invoke-virtual {p0}, Landroid/os/Binder;->markVintfStability()V

    sget-object v0, Lcom/google/hardware/biometrics/sidefps/IInteractiveToAuthFeatureProvider;->DESCRIPTOR:Ljava/lang/String;

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
    const-string p0, "isFeatureEnabled"

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

    sget-object v0, Lcom/google/hardware/biometrics/sidefps/IInteractiveToAuthFeatureProvider;->DESCRIPTOR:Ljava/lang/String;

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

    const-string p0, "notfrozen"

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :cond_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    check-cast p0, Lcom/google/android/systemui/fingerprint/FingerprintInteractiveToAuthProviderGoogle$1;

    iget-object p0, p0, Lcom/google/android/systemui/fingerprint/FingerprintInteractiveToAuthProviderGoogle$1;->this$0:Lcom/google/android/systemui/fingerprint/FingerprintInteractiveToAuthProviderGoogle;

    iget-object p2, p0, Lcom/google/android/systemui/fingerprint/FingerprintInteractiveToAuthProviderGoogle;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p4, 0x11101ba

    invoke-virtual {p2, p4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    iget-object p0, p0, Lcom/google/android/systemui/fingerprint/FingerprintInteractiveToAuthProviderGoogle;->mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    const-string p4, "sfps_performant_auth_enabled_v2"

    invoke-interface {p0, p4, p2, p1}, Lcom/android/systemui/util/settings/SettingsProxy;->getIntForUser(Ljava/lang/String;II)I

    move-result p0

    if-nez p0, :cond_2

    move p0, v1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        0xfffffe -> :sswitch_2
        0xffffff -> :sswitch_1
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
