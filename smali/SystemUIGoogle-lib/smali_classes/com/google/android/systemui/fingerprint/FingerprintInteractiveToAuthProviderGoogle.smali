.class public final Lcom/google/android/systemui/fingerprint/FingerprintInteractiveToAuthProviderGoogle;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mExecutor:Ljava/util/concurrent/Executor;

.field public final mFeatureProvider:Lcom/google/android/systemui/fingerprint/FingerprintInteractiveToAuthProviderGoogle$1;

.field public mFingerprintExt:Lcom/google/hardware/biometrics/sidefps/IFingerprintExt;

.field public final mFingerprintExtSupplier:Ljava/util/function/Supplier;

.field public final mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/util/settings/SecureSettings;Ljava/util/function/Supplier;Ljava/util/concurrent/Executor;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/systemui/fingerprint/FingerprintInteractiveToAuthProviderGoogle$1;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/fingerprint/FingerprintInteractiveToAuthProviderGoogle$1;-><init>(Lcom/google/android/systemui/fingerprint/FingerprintInteractiveToAuthProviderGoogle;)V

    iput-object v0, p0, Lcom/google/android/systemui/fingerprint/FingerprintInteractiveToAuthProviderGoogle;->mFeatureProvider:Lcom/google/android/systemui/fingerprint/FingerprintInteractiveToAuthProviderGoogle$1;

    iput-object p1, p0, Lcom/google/android/systemui/fingerprint/FingerprintInteractiveToAuthProviderGoogle;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/systemui/fingerprint/FingerprintInteractiveToAuthProviderGoogle;->mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    iput-object p3, p0, Lcom/google/android/systemui/fingerprint/FingerprintInteractiveToAuthProviderGoogle;->mFingerprintExtSupplier:Ljava/util/function/Supplier;

    iput-object p4, p0, Lcom/google/android/systemui/fingerprint/FingerprintInteractiveToAuthProviderGoogle;->mExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/systemui/fingerprint/FingerprintInteractiveToAuthProviderGoogle;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/systemui/fingerprint/FingerprintInteractiveToAuthProviderGoogle$$ExternalSyntheticLambda1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/systemui/fingerprint/FingerprintInteractiveToAuthProviderGoogle$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/systemui/fingerprint/FingerprintInteractiveToAuthProviderGoogle;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final binderDied(Landroid/os/IBinder;)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/systemui/fingerprint/FingerprintInteractiveToAuthProviderGoogle;->binderDied()V

    return-void
.end method
