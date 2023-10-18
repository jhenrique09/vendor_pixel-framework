.class public final synthetic Lcom/google/android/systemui/fingerprint/FingerprintInteractiveToAuthProviderGoogle$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/google/android/systemui/fingerprint/FingerprintInteractiveToAuthProviderGoogle;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/systemui/fingerprint/FingerprintInteractiveToAuthProviderGoogle;I)V
    .locals 0

    iput p2, p0, Lcom/google/android/systemui/fingerprint/FingerprintInteractiveToAuthProviderGoogle$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lcom/google/android/systemui/fingerprint/FingerprintInteractiveToAuthProviderGoogle$$ExternalSyntheticLambda1;->f$0:Lcom/google/android/systemui/fingerprint/FingerprintInteractiveToAuthProviderGoogle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Lcom/google/android/systemui/fingerprint/FingerprintInteractiveToAuthProviderGoogle$$ExternalSyntheticLambda1;->$r8$classId:I

    const/4 v1, 0x0

    const-string v2, "FingerprintInteractiveToAuthProviderGoogle"

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/google/android/systemui/fingerprint/FingerprintInteractiveToAuthProviderGoogle$$ExternalSyntheticLambda1;->f$0:Lcom/google/android/systemui/fingerprint/FingerprintInteractiveToAuthProviderGoogle;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "Fingerprint HAL died"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v1, p0, Lcom/google/android/systemui/fingerprint/FingerprintInteractiveToAuthProviderGoogle;->mFingerprintExt:Lcom/google/hardware/biometrics/sidefps/IFingerprintExt;

    return-void

    :goto_0
    iget-object p0, p0, Lcom/google/android/systemui/fingerprint/FingerprintInteractiveToAuthProviderGoogle$$ExternalSyntheticLambda1;->f$0:Lcom/google/android/systemui/fingerprint/FingerprintInteractiveToAuthProviderGoogle;

    iget-object v0, p0, Lcom/google/android/systemui/fingerprint/FingerprintInteractiveToAuthProviderGoogle;->mFingerprintExt:Lcom/google/hardware/biometrics/sidefps/IFingerprintExt;

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/systemui/fingerprint/FingerprintInteractiveToAuthProviderGoogle;->mFingerprintExtSupplier:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/hardware/biometrics/sidefps/IFingerprintExt;

    if-nez v0, :cond_1

    const-string v3, "Failed to connect to the fingerprint extension"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iput-object v0, p0, Lcom/google/android/systemui/fingerprint/FingerprintInteractiveToAuthProviderGoogle;->mFingerprintExt:Lcom/google/hardware/biometrics/sidefps/IFingerprintExt;

    :try_start_0
    check-cast v0, Lcom/google/hardware/biometrics/sidefps/IFingerprintExt$Stub$Proxy;

    iget-object v0, v0, Lcom/google/hardware/biometrics/sidefps/IFingerprintExt$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x0

    invoke-interface {v0, p0, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    iget-object v0, p0, Lcom/google/android/systemui/fingerprint/FingerprintInteractiveToAuthProviderGoogle;->mFingerprintExt:Lcom/google/hardware/biometrics/sidefps/IFingerprintExt;

    iget-object v3, p0, Lcom/google/android/systemui/fingerprint/FingerprintInteractiveToAuthProviderGoogle;->mFeatureProvider:Lcom/google/android/systemui/fingerprint/FingerprintInteractiveToAuthProviderGoogle$1;

    check-cast v0, Lcom/google/hardware/biometrics/sidefps/IFingerprintExt$Stub$Proxy;

    invoke-virtual {v0, v3}, Lcom/google/hardware/biometrics/sidefps/IFingerprintExt$Stub$Proxy;->registerFeatureProvider(Lcom/google/android/systemui/fingerprint/FingerprintInteractiveToAuthProviderGoogle$1;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v3, "RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iput-object v1, p0, Lcom/google/android/systemui/fingerprint/FingerprintInteractiveToAuthProviderGoogle;->mFingerprintExt:Lcom/google/hardware/biometrics/sidefps/IFingerprintExt;

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
