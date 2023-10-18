.class public final synthetic Lcom/google/android/systemui/power/SevereLowBatteryDialog$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/google/android/systemui/power/SevereLowBatteryDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/systemui/power/SevereLowBatteryDialog;I)V
    .locals 0

    iput p2, p0, Lcom/google/android/systemui/power/SevereLowBatteryDialog$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lcom/google/android/systemui/power/SevereLowBatteryDialog$$ExternalSyntheticLambda1;->f$0:Lcom/google/android/systemui/power/SevereLowBatteryDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget p1, p0, Lcom/google/android/systemui/power/SevereLowBatteryDialog$$ExternalSyntheticLambda1;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/google/android/systemui/power/SevereLowBatteryDialog$$ExternalSyntheticLambda1;->f$0:Lcom/google/android/systemui/power/SevereLowBatteryDialog;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lcom/google/android/systemui/power/BatteryMetricEvent;->SEVERE_BATTERY_DIALOG_TURN_ON:Lcom/google/android/systemui/power/BatteryMetricEvent;

    iget-object p2, p0, Lcom/google/android/systemui/power/SevereLowBatteryDialog;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    if-eqz p2, :cond_0

    invoke-interface {p2, p1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    :cond_0
    iget-object p1, p0, Lcom/google/android/systemui/power/SevereLowBatteryDialog;->mSevereBatteryDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    new-instance p1, Lcom/google/android/systemui/power/SevereLowBatteryDialog$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lcom/google/android/systemui/power/SevereLowBatteryDialog$$ExternalSyntheticLambda2;-><init>(Lcom/google/android/systemui/power/SevereLowBatteryDialog;)V

    invoke-static {p1}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    return-void

    :goto_0
    iget-object p0, p0, Lcom/google/android/systemui/power/SevereLowBatteryDialog$$ExternalSyntheticLambda1;->f$0:Lcom/google/android/systemui/power/SevereLowBatteryDialog;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lcom/google/android/systemui/power/BatteryMetricEvent;->SEVERE_BATTERY_DIALOG_CANCEL:Lcom/google/android/systemui/power/BatteryMetricEvent;

    iget-object p0, p0, Lcom/google/android/systemui/power/SevereLowBatteryDialog;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
