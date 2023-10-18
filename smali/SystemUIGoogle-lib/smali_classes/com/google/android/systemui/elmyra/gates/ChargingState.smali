.class public final Lcom/google/android/systemui/elmyra/gates/ChargingState;
.super Lcom/google/android/systemui/elmyra/gates/TransientGate;
.source ""


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mPowerReceiver:Lcom/google/android/systemui/elmyra/gates/ChargingState$1;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/util/concurrency/DelayableExecutor;I)V
    .locals 2

    int-to-long v0, p3

    invoke-direct {p0, p2, v0, v1}, Lcom/google/android/systemui/elmyra/gates/TransientGate;-><init>(Lcom/android/systemui/util/concurrency/DelayableExecutor;J)V

    new-instance p2, Lcom/google/android/systemui/elmyra/gates/ChargingState$1;

    invoke-direct {p2, p0}, Lcom/google/android/systemui/elmyra/gates/ChargingState$1;-><init>(Lcom/google/android/systemui/elmyra/gates/ChargingState;)V

    iput-object p2, p0, Lcom/google/android/systemui/elmyra/gates/ChargingState;->mPowerReceiver:Lcom/google/android/systemui/elmyra/gates/ChargingState$1;

    iput-object p1, p0, Lcom/google/android/systemui/elmyra/gates/ChargingState;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final onActivate()V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/systemui/elmyra/gates/ChargingState;->mPowerReceiver:Lcom/google/android/systemui/elmyra/gates/ChargingState$1;

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/gates/ChargingState;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public final onDeactivate()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/systemui/elmyra/gates/ChargingState;->mPowerReceiver:Lcom/google/android/systemui/elmyra/gates/ChargingState$1;

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/gates/ChargingState;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
