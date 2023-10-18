.class public final Lcom/google/android/systemui/power/BatteryDefenderNotification$1;
.super Landroid/os/AsyncTask;
.source ""


# instance fields
.field public final synthetic this$0:Lcom/google/android/systemui/power/BatteryDefenderNotification;

.field public final synthetic val$isPlugged:Z


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/power/BatteryDefenderNotification;Z)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/power/BatteryDefenderNotification$1;->this$0:Lcom/google/android/systemui/power/BatteryDefenderNotification;

    iput-boolean p2, p0, Lcom/google/android/systemui/power/BatteryDefenderNotification$1;->val$isPlugged:Z

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-static {}, Lcom/google/android/systemui/power/BatteryDefenderNotification;->-$$Nest$smgetDockDefendStatus()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public final onPostExecute(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    iget-object p1, p0, Lcom/google/android/systemui/power/BatteryDefenderNotification$1;->this$0:Lcom/google/android/systemui/power/BatteryDefenderNotification;

    iget-boolean p0, p0, Lcom/google/android/systemui/power/BatteryDefenderNotification$1;->val$isPlugged:Z

    invoke-virtual {p1, p0}, Lcom/google/android/systemui/power/BatteryDefenderNotification;->sendNotification(Z)V

    :cond_0
    return-void
.end method
