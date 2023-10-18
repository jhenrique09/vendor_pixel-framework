.class public final Lcom/google/android/systemui/fingerprint/UdfpsTouchProvider;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final extensionProvider:Lcom/google/android/systemui/fingerprint/FingerprintExtProvider;

.field public fingerprintExt:Lcom/google/hardware/biometrics/fingerprint/IFingerprintExt;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/fingerprint/FingerprintExtProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/fingerprint/UdfpsTouchProvider;->extensionProvider:Lcom/google/android/systemui/fingerprint/FingerprintExtProvider;

    return-void
.end method


# virtual methods
.method public final getFingerprintExt()Lcom/google/hardware/biometrics/fingerprint/IFingerprintExt;
    .locals 3

    iget-object v0, p0, Lcom/google/android/systemui/fingerprint/UdfpsTouchProvider;->fingerprintExt:Lcom/google/hardware/biometrics/fingerprint/IFingerprintExt;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/systemui/fingerprint/UdfpsTouchProvider;->extensionProvider:Lcom/google/android/systemui/fingerprint/FingerprintExtProvider;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "android.hardware.biometrics.fingerprint.IFingerprint/default"

    invoke-static {v0}, Landroid/os/ServiceManager;->waitForDeclaredService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->getExtension()Landroid/os/IBinder;

    move-result-object v0

    sget v1, Lcom/google/hardware/biometrics/fingerprint/IFingerprintExt$Stub;->$r8$clinit:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :cond_0
    sget-object v1, Lcom/google/hardware/biometrics/fingerprint/IFingerprintExt;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    if-eqz v1, :cond_1

    instance-of v2, v1, Lcom/google/hardware/biometrics/fingerprint/IFingerprintExt;

    if-eqz v2, :cond_1

    check-cast v1, Lcom/google/hardware/biometrics/fingerprint/IFingerprintExt;

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/google/hardware/biometrics/fingerprint/IFingerprintExt$Stub$Proxy;

    invoke-direct {v1, v0}, Lcom/google/hardware/biometrics/fingerprint/IFingerprintExt$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    :goto_0
    move-object v0, v1

    :goto_1
    if-nez v0, :cond_2

    const-string v1, "FingerprintExtProvider"

    const-string v2, "FingerprintExt was null, ignoring calls to this object"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v1, p0, Lcom/google/android/systemui/fingerprint/UdfpsTouchProvider;->fingerprintExt:Lcom/google/hardware/biometrics/fingerprint/IFingerprintExt;

    if-nez v1, :cond_3

    iput-object v0, p0, Lcom/google/android/systemui/fingerprint/UdfpsTouchProvider;->fingerprintExt:Lcom/google/hardware/biometrics/fingerprint/IFingerprintExt;

    :cond_3
    return-object v0
.end method

.method public final onUiReady()V
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/systemui/fingerprint/UdfpsTouchProvider;->getFingerprintExt()Lcom/google/hardware/biometrics/fingerprint/IFingerprintExt;

    move-result-object v1

    if-eqz v1, :cond_1

    check-cast v1, Lcom/google/hardware/biometrics/fingerprint/IFingerprintExt$Stub$Proxy;

    iget-object v2, v1, Lcom/google/hardware/biometrics/fingerprint/IFingerprintExt$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    invoke-static {v2}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    sget-object v3, Lcom/google/hardware/biometrics/fingerprint/IFingerprintExt;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    iget-object v1, v1, Lcom/google/hardware/biometrics/fingerprint/IFingerprintExt$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x3

    invoke-interface {v1, v4, v2, v0, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :cond_0
    :try_start_3
    new-instance v1, Landroid/os/RemoteException;

    const-string v3, "Method onUiReady is unimplemented."

    invoke-direct {v1, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v1

    :try_start_4
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v1
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    const-string v1, "UdfpsTouchProvider"

    const-string v2, "Remote exception while calling onUiReady"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v0, p0, Lcom/google/android/systemui/fingerprint/UdfpsTouchProvider;->fingerprintExt:Lcom/google/hardware/biometrics/fingerprint/IFingerprintExt;

    :cond_1
    :goto_0
    return-void
.end method
