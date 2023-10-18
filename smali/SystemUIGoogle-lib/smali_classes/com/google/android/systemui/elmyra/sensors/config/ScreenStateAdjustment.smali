.class public final Lcom/google/android/systemui/elmyra/sensors/config/ScreenStateAdjustment;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public mCallback:Ljava/util/function/Consumer;

.field public final mKeyguardUpdateMonitorCallback:Lcom/google/android/systemui/elmyra/sensors/config/ScreenStateAdjustment$1;

.field public final mPowerManager:Landroid/os/PowerManager;

.field public final mScreenOffAdjustment:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/PowerManager;Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/systemui/elmyra/sensors/config/ScreenStateAdjustment$1;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/elmyra/sensors/config/ScreenStateAdjustment$1;-><init>(Lcom/google/android/systemui/elmyra/sensors/config/ScreenStateAdjustment;)V

    iput-object v0, p0, Lcom/google/android/systemui/elmyra/sensors/config/ScreenStateAdjustment;->mKeyguardUpdateMonitorCallback:Lcom/google/android/systemui/elmyra/sensors/config/ScreenStateAdjustment$1;

    iput-object p2, p0, Lcom/google/android/systemui/elmyra/sensors/config/ScreenStateAdjustment;->mPowerManager:Landroid/os/PowerManager;

    new-instance p2, Landroid/util/TypedValue;

    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f070298

    const/4 v2, 0x1

    invoke-virtual {p1, v1, p2, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    invoke-virtual {p2}, Landroid/util/TypedValue;->getFloat()F

    move-result p1

    iput p1, p0, Lcom/google/android/systemui/elmyra/sensors/config/ScreenStateAdjustment;->mScreenOffAdjustment:F

    invoke-virtual {p3, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method
