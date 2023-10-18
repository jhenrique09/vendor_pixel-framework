.class public final Lcom/google/android/systemui/power/BatteryDefenderNotification$2;
.super Landroid/os/AsyncTask;
.source ""


# instance fields
.field public final synthetic this$0:Lcom/google/android/systemui/power/BatteryDefenderNotification;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/power/BatteryDefenderNotification;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/power/BatteryDefenderNotification$2;->this$0:Lcom/google/android/systemui/power/BatteryDefenderNotification;

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

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/google/android/systemui/power/BatteryDefenderNotification$2;->this$0:Lcom/google/android/systemui/power/BatteryDefenderNotification;

    invoke-virtual {p0}, Lcom/google/android/systemui/power/BatteryDefenderNotification;->sendDockDefenderFirstRunNotification()V

    :cond_0
    return-void
.end method
