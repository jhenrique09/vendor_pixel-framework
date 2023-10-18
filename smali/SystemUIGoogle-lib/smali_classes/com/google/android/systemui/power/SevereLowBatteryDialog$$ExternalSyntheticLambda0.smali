.class public final synthetic Lcom/google/android/systemui/power/SevereLowBatteryDialog$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/google/android/systemui/power/SevereLowBatteryDialog;

.field public final synthetic f$1:I

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/systemui/power/SevereLowBatteryDialog;IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/power/SevereLowBatteryDialog$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/systemui/power/SevereLowBatteryDialog;

    iput p2, p0, Lcom/google/android/systemui/power/SevereLowBatteryDialog$$ExternalSyntheticLambda0;->f$1:I

    iput-boolean p3, p0, Lcom/google/android/systemui/power/SevereLowBatteryDialog$$ExternalSyntheticLambda0;->f$2:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/systemui/power/SevereLowBatteryDialog$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/systemui/power/SevereLowBatteryDialog;

    iget v1, p0, Lcom/google/android/systemui/power/SevereLowBatteryDialog$$ExternalSyntheticLambda0;->f$1:I

    iget-boolean p0, p0, Lcom/google/android/systemui/power/SevereLowBatteryDialog$$ExternalSyntheticLambda0;->f$2:Z

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    int-to-double v1, v1

    double-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-double v1, v1

    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    div-double/2addr v1, v3

    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    iget-object v3, v0, Lcom/google/android/systemui/power/SevereLowBatteryDialog;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lcom/google/android/systemui/power/SevereLowBatteryDialog;->mSevereBatteryDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    if-eqz p0, :cond_0

    const v4, 0x7f130809

    goto :goto_0

    :cond_0
    const v4, 0x7f13080b

    :goto_0
    invoke-virtual {v2, v4}, Landroid/app/AlertDialog;->setTitle(I)V

    iget-object v2, v0, Lcom/google/android/systemui/power/SevereLowBatteryDialog;->mSevereBatteryDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    if-eqz p0, :cond_1

    const v4, 0x7f130808

    goto :goto_1

    :cond_1
    const v4, 0x7f13080a

    :goto_1
    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/google/android/systemui/power/SevereLowBatteryDialog;->mSevereBatteryDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setShowForAllUsers(Landroid/app/Dialog;)V

    iget-object v1, v0, Lcom/google/android/systemui/power/SevereLowBatteryDialog;->mSevereBatteryDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    iget-object v1, v0, Lcom/google/android/systemui/power/SevereLowBatteryDialog;->mSevereBatteryDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    if-eqz p0, :cond_2

    const p0, 0x7f130807

    goto :goto_2

    :cond_2
    const p0, 0x7f130153

    :goto_2
    new-instance v3, Lcom/google/android/systemui/power/SevereLowBatteryDialog$$ExternalSyntheticLambda1;

    invoke-direct {v3, v0, v2}, Lcom/google/android/systemui/power/SevereLowBatteryDialog$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/systemui/power/SevereLowBatteryDialog;I)V

    invoke-virtual {v1, p0, v3}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    iget-object p0, v0, Lcom/google/android/systemui/power/SevereLowBatteryDialog;->mSevereBatteryDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    new-instance v1, Lcom/google/android/systemui/power/SevereLowBatteryDialog$$ExternalSyntheticLambda1;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lcom/google/android/systemui/power/SevereLowBatteryDialog$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/systemui/power/SevereLowBatteryDialog;I)V

    const v2, 0x7f13077e

    invoke-virtual {p0, v2, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    iget-object p0, v0, Lcom/google/android/systemui/power/SevereLowBatteryDialog;->mSevereBatteryDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    sget-object p0, Lcom/google/android/systemui/power/BatteryMetricEvent;->SEVERE_BATTERY_DIALOG:Lcom/google/android/systemui/power/BatteryMetricEvent;

    iget-object v0, v0, Lcom/google/android/systemui/power/SevereLowBatteryDialog;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    if-eqz v0, :cond_3

    invoke-interface {v0, p0}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    :cond_3
    return-void
.end method
