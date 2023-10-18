.class public final synthetic Lcom/google/android/systemui/power/AdaptiveChargingNotification$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/google/android/systemui/power/AdaptiveChargingNotification;

.field public final synthetic f$1:Lcom/google/android/systemui/googlebattery/AdaptiveChargingManager$AdaptiveChargingStatusReceiver;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/systemui/power/AdaptiveChargingNotification;Lcom/google/android/systemui/power/AdaptiveChargingNotification$1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/power/AdaptiveChargingNotification$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/systemui/power/AdaptiveChargingNotification;

    iput-object p2, p0, Lcom/google/android/systemui/power/AdaptiveChargingNotification$$ExternalSyntheticLambda0;->f$1:Lcom/google/android/systemui/googlebattery/AdaptiveChargingManager$AdaptiveChargingStatusReceiver;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/systemui/power/AdaptiveChargingNotification$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/systemui/power/AdaptiveChargingNotification;

    iget-object p0, p0, Lcom/google/android/systemui/power/AdaptiveChargingNotification$$ExternalSyntheticLambda0;->f$1:Lcom/google/android/systemui/googlebattery/AdaptiveChargingManager$AdaptiveChargingStatusReceiver;

    iget-object v0, v0, Lcom/google/android/systemui/power/AdaptiveChargingNotification;->mAdaptiveChargingManager:Lcom/google/android/systemui/googlebattery/AdaptiveChargingManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/google/android/systemui/googlebattery/AdaptiveChargingManager;->queryStatus(Lcom/google/android/systemui/googlebattery/AdaptiveChargingManager$AdaptiveChargingStatusReceiver;)V

    return-void
.end method
