.class public final Lcom/google/android/systemui/fingerprint/FingerprintReEnrollNotificationGoogle;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/systemui/biometrics/FingerprintReEnrollNotification;


# virtual methods
.method public final isFingerprintReEnrollRequired(I)Z
    .locals 0

    const/16 p0, 0x3fc

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
