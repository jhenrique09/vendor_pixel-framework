.class public final synthetic Lcom/google/android/systemui/power/BatterySaverConfirmationDialog$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/google/android/systemui/power/BatterySaverConfirmationDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/systemui/power/BatterySaverConfirmationDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/power/BatterySaverConfirmationDialog$$ExternalSyntheticLambda3;->f$0:Lcom/google/android/systemui/power/BatterySaverConfirmationDialog;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object p0, p0, Lcom/google/android/systemui/power/BatterySaverConfirmationDialog$$ExternalSyntheticLambda3;->f$0:Lcom/google/android/systemui/power/BatterySaverConfirmationDialog;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lcom/google/android/systemui/power/BatteryMetricEvent;->SAVER_CONFIRMATION_DIALOG_SETUP:Lcom/google/android/systemui/power/BatteryMetricEvent;

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/power/BatterySaverConfirmationDialog;->log(Lcom/google/android/systemui/power/BatteryMetricEvent;)V

    iget-object p1, p0, Lcom/google/android/systemui/power/BatterySaverConfirmationDialog;->mConfirmationDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.settings.batterysaver.flipendo.onboarding"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iget-object p0, p0, Lcom/google/android/systemui/power/BatterySaverConfirmationDialog;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    invoke-interface {p0, p1, v0}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V

    return-void
.end method
