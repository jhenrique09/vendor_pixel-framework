.class public abstract Lcom/google/android/systemui/dagger/SystemUIGoogleModule_ProvideFingerprintReEnrollNotificationFactory;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljavax/inject/Provider;


# direct methods
.method public static provideFingerprintReEnrollNotification()Lcom/google/android/systemui/fingerprint/FingerprintReEnrollNotificationGoogle;
    .locals 1

    new-instance v0, Lcom/google/android/systemui/fingerprint/FingerprintReEnrollNotificationGoogle;

    invoke-direct {v0}, Lcom/google/android/systemui/fingerprint/FingerprintReEnrollNotificationGoogle;-><init>()V

    return-object v0
.end method
