.class public abstract Lcom/google/android/systemui/dagger/SystemUIGoogleModule_ProvideFingerprintInteractiveToAuthProviderFactory;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljavax/inject/Provider;


# direct methods
.method public static provideFingerprintInteractiveToAuthProvider(Landroid/content/Context;Lcom/android/systemui/util/settings/SecureSettings;Ljava/util/concurrent/Executor;)Lcom/google/android/systemui/fingerprint/FingerprintInteractiveToAuthProviderGoogle;
    .locals 2

    new-instance v0, Lcom/google/android/systemui/fingerprint/FingerprintInteractiveToAuthProviderGoogle;

    new-instance v1, Lcom/google/android/systemui/fingerprint/FingerprintInteractiveToAuthProviderGoogle$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/google/android/systemui/fingerprint/FingerprintInteractiveToAuthProviderGoogle$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {v0, p0, p1, v1, p2}, Lcom/google/android/systemui/fingerprint/FingerprintInteractiveToAuthProviderGoogle;-><init>(Landroid/content/Context;Lcom/android/systemui/util/settings/SecureSettings;Ljava/util/function/Supplier;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method
