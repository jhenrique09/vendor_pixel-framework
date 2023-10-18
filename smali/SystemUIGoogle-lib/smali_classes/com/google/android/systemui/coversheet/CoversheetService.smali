.class public final Lcom/google/android/systemui/coversheet/CoversheetService;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final DEBUG:Z


# instance fields
.field public final mBuildId:Ljava/lang/String;

.field public final mCallback:Lcom/google/android/systemui/coversheet/CoversheetService$1;

.field public final mContext:Landroid/content/Context;

.field public mKeyguardShowing:Z

.field public mUserUnlocked:Z


# direct methods
.method public static -$$Nest$mstartCoversheetIfNeeded(Lcom/google/android/systemui/coversheet/CoversheetService;)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/systemui/coversheet/CoversheetService;->mContext:Landroid/content/Context;

    const-string v1, "Coversheet"

    sget-boolean v2, Lcom/google/android/systemui/coversheet/CoversheetService;->DEBUG:Z

    if-eqz v2, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "mKeyguardShowing: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v4, p0, Lcom/google/android/systemui/coversheet/CoversheetService;->mKeyguardShowing:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", mUserUnlocked: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/google/android/systemui/coversheet/CoversheetService;->mUserUnlocked:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v3, p0, Lcom/google/android/systemui/coversheet/CoversheetService;->mKeyguardShowing:Z

    if-nez v3, :cond_4

    iget-boolean v3, p0, Lcom/google/android/systemui/coversheet/CoversheetService;->mUserUnlocked:Z

    if-eqz v3, :cond_4

    sget-object v3, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->sInstance:Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    invoke-virtual {v3}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getRunningTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v3

    if-nez v3, :cond_1

    const-string p0, "Not able to get any running task"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_1
    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v3, v3, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getActivityType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    if-eqz v2, :cond_3

    const-string v2, "Going to home now? "

    invoke-static {v2, v3, v1}, Lcom/android/settingslib/mobile/MobileStatusTracker$MobileTelephonyCallback$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)V

    :cond_3
    if-eqz v3, :cond_4

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.google.android.apps.tips.action.COVERSHEET"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "com.google.android.apps.tips"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v3, 0x14000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string v2, "Coversheet was not found"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "coversheet_id"

    iget-object v2, p0, Lcom/google/android/systemui/coversheet/CoversheetService;->mBuildId:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object p0, p0, Lcom/google/android/systemui/coversheet/CoversheetService;->mCallback:Lcom/google/android/systemui/coversheet/CoversheetService$1;

    invoke-virtual {v0, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    :cond_4
    :goto_2
    return-void
.end method

.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "Coversheet"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/systemui/coversheet/CoversheetService;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/systemui/coversheet/CoversheetService$1;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/coversheet/CoversheetService$1;-><init>(Lcom/google/android/systemui/coversheet/CoversheetService;)V

    iput-object v0, p0, Lcom/google/android/systemui/coversheet/CoversheetService;->mCallback:Lcom/google/android/systemui/coversheet/CoversheetService$1;

    sget-object v1, Landroid/os/Build;->ID:Ljava/lang/String;

    const-string v2, "\\."

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/google/android/systemui/coversheet/CoversheetService;->mBuildId:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/systemui/coversheet/CoversheetService;->mContext:Landroid/content/Context;

    const-class p0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    check-cast p0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->isDeviceProvisioned()Z

    move-result p0

    const-string v2, "Coversheet"

    sget-boolean v3, Lcom/google/android/systemui/coversheet/CoversheetService;->DEBUG:Z

    const-string v4, "coversheet_id"

    if-nez p0, :cond_1

    if-eqz v3, :cond_0

    const-string p0, "Store initial ID: "

    invoke-static {p0, v1, v2}, Landroidx/fragment/app/DialogFragment$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v4, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_3

    if-eqz v3, :cond_2

    const-string p0, "Register callback."

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const-class p0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    :cond_3
    :goto_0
    return-void
.end method
