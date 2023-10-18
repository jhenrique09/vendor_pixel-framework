.class public final Lcom/google/android/systemui/googlebattery/AdaptiveChargingManager$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic val$receiver:Lcom/google/android/systemui/googlebattery/AdaptiveChargingManager$AdaptiveChargingStatusReceiver;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/googlebattery/AdaptiveChargingManager$AdaptiveChargingStatusReceiver;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/googlebattery/AdaptiveChargingManager$1;->val$receiver:Lcom/google/android/systemui/googlebattery/AdaptiveChargingManager$AdaptiveChargingStatusReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 2

    sget-boolean v0, Lcom/google/android/systemui/googlebattery/AdaptiveChargingManager;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "AdaptiveChargingManager"

    const-string v1, "serviceDied"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p0, p0, Lcom/google/android/systemui/googlebattery/AdaptiveChargingManager$1;->val$receiver:Lcom/google/android/systemui/googlebattery/AdaptiveChargingManager$AdaptiveChargingStatusReceiver;

    invoke-interface {p0}, Lcom/google/android/systemui/googlebattery/AdaptiveChargingManager$AdaptiveChargingStatusReceiver;->onDestroyInterface()V

    return-void
.end method
