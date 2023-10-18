.class public abstract Lcom/google/android/systemui/dagger/SystemUIGoogleModule;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static provideUdfpsTouchProvider(Lcom/android/systemui/flags/FeatureFlags;Lcom/google/android/systemui/fingerprint/FingerprintExtProvider;)Lcom/google/android/systemui/fingerprint/UdfpsTouchProvider;
    .locals 1

    sget-object v0, Lcom/android/systemui/flags/Flags;->UDFPS_NEW_TOUCH_DETECTION:Lcom/android/systemui/flags/ReleasedFlag;

    check-cast p0, Lcom/android/systemui/flags/FeatureFlagsRelease;

    invoke-virtual {p0, v0}, Lcom/android/systemui/flags/FeatureFlagsRelease;->isEnabled(Lcom/android/systemui/flags/ReleasedFlag;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance p0, Lcom/google/android/systemui/fingerprint/UdfpsTouchProvider;

    invoke-direct {p0, p1}, Lcom/google/android/systemui/fingerprint/UdfpsTouchProvider;-><init>(Lcom/google/android/systemui/fingerprint/FingerprintExtProvider;)V

    return-object p0
.end method
