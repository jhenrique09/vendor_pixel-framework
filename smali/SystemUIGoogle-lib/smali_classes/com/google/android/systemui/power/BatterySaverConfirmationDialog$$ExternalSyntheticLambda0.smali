.class public final synthetic Lcom/google/android/systemui/power/BatterySaverConfirmationDialog$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/google/android/systemui/power/BatterySaverConfirmationDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/systemui/power/BatterySaverConfirmationDialog;I)V
    .locals 0

    iput p2, p0, Lcom/google/android/systemui/power/BatterySaverConfirmationDialog$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/google/android/systemui/power/BatterySaverConfirmationDialog$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/systemui/power/BatterySaverConfirmationDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget p2, p0, Lcom/google/android/systemui/power/BatterySaverConfirmationDialog$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/google/android/systemui/power/BatterySaverConfirmationDialog$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/systemui/power/BatterySaverConfirmationDialog;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p2, Lcom/google/android/systemui/power/BatteryMetricEvent;->SAVER_CONFIRMATION_DIALOG_TURN_ON:Lcom/google/android/systemui/power/BatteryMetricEvent;

    invoke-virtual {p0, p2}, Lcom/google/android/systemui/power/BatterySaverConfirmationDialog;->log(Lcom/google/android/systemui/power/BatteryMetricEvent;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    new-instance p1, Lcom/google/android/systemui/power/BatterySaverConfirmationDialog$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/google/android/systemui/power/BatterySaverConfirmationDialog$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/systemui/power/BatterySaverConfirmationDialog;)V

    invoke-static {p1}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    return-void

    :goto_0
    iget-object p0, p0, Lcom/google/android/systemui/power/BatterySaverConfirmationDialog$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/systemui/power/BatterySaverConfirmationDialog;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p2, Lcom/google/android/systemui/power/BatteryMetricEvent;->SAVER_CONFIRMATION_DIALOG_CANCEL:Lcom/google/android/systemui/power/BatteryMetricEvent;

    invoke-virtual {p0, p2}, Lcom/google/android/systemui/power/BatterySaverConfirmationDialog;->log(Lcom/google/android/systemui/power/BatteryMetricEvent;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
