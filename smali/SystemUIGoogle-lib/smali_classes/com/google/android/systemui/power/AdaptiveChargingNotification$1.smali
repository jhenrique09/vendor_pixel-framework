.class public final Lcom/google/android/systemui/power/AdaptiveChargingNotification$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/systemui/googlebattery/AdaptiveChargingManager$AdaptiveChargingStatusReceiver;


# instance fields
.field public final synthetic this$0:Lcom/google/android/systemui/power/AdaptiveChargingNotification;

.field public final synthetic val$forceUpdate:Z


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/power/AdaptiveChargingNotification;Z)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/power/AdaptiveChargingNotification$1;->this$0:Lcom/google/android/systemui/power/AdaptiveChargingNotification;

    iput-boolean p2, p0, Lcom/google/android/systemui/power/AdaptiveChargingNotification$1;->val$forceUpdate:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDestroyInterface()V
    .locals 0

    return-void
.end method

.method public final onReceiveStatus(ILjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/systemui/power/AdaptiveChargingNotification$1;->this$0:Lcom/google/android/systemui/power/AdaptiveChargingNotification;

    iget-object v0, v0, Lcom/google/android/systemui/power/AdaptiveChargingNotification;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/systemui/power/AdaptiveChargingNotification$1$$ExternalSyntheticLambda0;

    iget-boolean v2, p0, Lcom/google/android/systemui/power/AdaptiveChargingNotification$1;->val$forceUpdate:Z

    invoke-direct {v1, p0, p2, p1, v2}, Lcom/google/android/systemui/power/AdaptiveChargingNotification$1$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/systemui/power/AdaptiveChargingNotification$1;Ljava/lang/String;IZ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
