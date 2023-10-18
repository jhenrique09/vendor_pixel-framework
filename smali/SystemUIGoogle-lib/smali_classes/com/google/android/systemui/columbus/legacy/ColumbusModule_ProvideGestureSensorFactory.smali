.class public abstract Lcom/google/android/systemui/columbus/legacy/ColumbusModule_ProvideGestureSensorFactory;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljavax/inject/Provider;


# direct methods
.method public static provideGestureSensor(Landroid/content/Context;Lcom/google/android/systemui/columbus/legacy/ColumbusSettings;Lcom/android/systemui/flags/FeatureFlags;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;)Lcom/google/android/systemui/columbus/legacy/sensors/GestureSensor;
    .locals 3

    iget-object v0, p1, Lcom/google/android/systemui/columbus/legacy/ColumbusSettings;->userTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast v0, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result v0

    iget-object p1, p1, Lcom/google/android/systemui/columbus/legacy/ColumbusSettings;->contentResolver:Landroid/content/ContentResolver;

    const-string v1, "columbus_ap_sensor"

    const/4 v2, 0x0

    invoke-static {p1, v1, v2, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    :cond_0
    const-string p1, "Columbus/Module"

    if-nez v2, :cond_3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "android.hardware.context_hub"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/android/systemui/flags/Flags;->QUICK_TAP_IN_PCC:Lcom/android/systemui/flags/ReleasedFlag;

    check-cast p2, Lcom/android/systemui/flags/FeatureFlagsRelease;

    invoke-virtual {p2, p0}, Lcom/android/systemui/flags/FeatureFlagsRelease;->isEnabled(Lcom/android/systemui/flags/ReleasedFlag;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "Creating CHRE sensor delegator"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    check-cast p4, Ldagger/internal/DoubleCheck;

    invoke-virtual {p4}, Ldagger/internal/DoubleCheck;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/systemui/columbus/legacy/sensors/GestureSensor;

    goto :goto_1

    :cond_2
    const-string p0, "Creating CHRE sensor"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    check-cast p3, Ldagger/internal/DoubleCheck;

    invoke-virtual {p3}, Ldagger/internal/DoubleCheck;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/systemui/columbus/legacy/sensors/GestureSensor;

    goto :goto_1

    :cond_3
    :goto_0
    const-string p0, "Creating AP sensor"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    check-cast p5, Ldagger/internal/DoubleCheck;

    invoke-virtual {p5}, Ldagger/internal/DoubleCheck;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/systemui/columbus/legacy/sensors/GestureSensor;

    :goto_1
    return-object p0
.end method
