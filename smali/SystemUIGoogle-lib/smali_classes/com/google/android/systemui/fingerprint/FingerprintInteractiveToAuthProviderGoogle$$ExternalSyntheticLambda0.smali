.class public final synthetic Lcom/google/android/systemui/fingerprint/FingerprintInteractiveToAuthProviderGoogle$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Supplier;


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    const-string p0, "android.hardware.biometrics.fingerprint.IFingerprint/default"

    invoke-static {p0}, Landroid/os/ServiceManager;->waitForDeclaredService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "FingerprintInteractiveToAuthProviderGoogle"

    const-string v0, "Unable to get fingerprint service"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-interface {p0}, Landroid/os/IBinder;->getExtension()Landroid/os/IBinder;

    move-result-object p0

    sget v0, Lcom/google/hardware/biometrics/sidefps/IFingerprintExt$Stub;->$r8$clinit:I

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/google/hardware/biometrics/sidefps/IFingerprintExt;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_2

    instance-of v1, v0, Lcom/google/hardware/biometrics/sidefps/IFingerprintExt;

    if-eqz v1, :cond_2

    check-cast v0, Lcom/google/hardware/biometrics/sidefps/IFingerprintExt;

    goto :goto_1

    :cond_2
    new-instance v0, Lcom/google/hardware/biometrics/sidefps/IFingerprintExt$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/google/hardware/biometrics/sidefps/IFingerprintExt$Stub$Proxy;-><init>(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method
