.class public final Lcom/google/android/systemui/power/BatterySaverConfirmationDialog;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field public mConfirmationDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

.field public final mContext:Landroid/content/Context;

.field public mIsStandardMode:Z

.field public final mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

.field public final mUserTracker:Lcom/android/systemui/settings/UserTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/settings/UserTracker;Lcom/android/internal/logging/UiEventLogger;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/power/BatterySaverConfirmationDialog;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/systemui/power/BatterySaverConfirmationDialog;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    iput-object p3, p0, Lcom/google/android/systemui/power/BatterySaverConfirmationDialog;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    iput-object p4, p0, Lcom/google/android/systemui/power/BatterySaverConfirmationDialog;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    return-void
.end method


# virtual methods
.method public final log(Lcom/google/android/systemui/power/BatteryMetricEvent;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/systemui/power/BatterySaverConfirmationDialog;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    if-eq v1, v2, :cond_0

    invoke-interface {v0, p1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    goto :goto_0

    :cond_0
    iget-boolean p0, p0, Lcom/google/android/systemui/power/BatterySaverConfirmationDialog;->mIsStandardMode:Z

    xor-int/lit8 p0, p0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, p1, v1, v2, p0}, Lcom/android/internal/logging/UiEventLogger;->logWithPosition(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;I)V

    :cond_1
    :goto_0
    return-void
.end method
