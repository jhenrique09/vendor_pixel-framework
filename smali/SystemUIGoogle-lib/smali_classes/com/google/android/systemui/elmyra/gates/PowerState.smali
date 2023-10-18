.class public Lcom/google/android/systemui/elmyra/gates/PowerState;
.super Lcom/google/android/systemui/elmyra/gates/Gate;
.source ""


# instance fields
.field public final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public final mKeyguardUpdateMonitorCallback:Lcom/google/android/systemui/elmyra/gates/PowerState$1;

.field public final mPowerManager:Landroid/os/PowerManager;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Landroid/os/PowerManager;Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/systemui/elmyra/gates/Gate;-><init>(Ljava/util/concurrent/Executor;)V

    new-instance p1, Lcom/google/android/systemui/elmyra/gates/PowerState$1;

    invoke-direct {p1, p0}, Lcom/google/android/systemui/elmyra/gates/PowerState$1;-><init>(Lcom/google/android/systemui/elmyra/gates/PowerState;)V

    iput-object p1, p0, Lcom/google/android/systemui/elmyra/gates/PowerState;->mKeyguardUpdateMonitorCallback:Lcom/google/android/systemui/elmyra/gates/PowerState$1;

    iput-object p2, p0, Lcom/google/android/systemui/elmyra/gates/PowerState;->mPowerManager:Landroid/os/PowerManager;

    iput-object p3, p0, Lcom/google/android/systemui/elmyra/gates/PowerState;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    return-void
.end method


# virtual methods
.method public isBlocked()Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/gates/PowerState;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {p0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public onActivate()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/systemui/elmyra/gates/PowerState;->mKeyguardUpdateMonitorCallback:Lcom/google/android/systemui/elmyra/gates/PowerState$1;

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/gates/PowerState;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method public onDeactivate()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/systemui/elmyra/gates/PowerState;->mKeyguardUpdateMonitorCallback:Lcom/google/android/systemui/elmyra/gates/PowerState$1;

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/gates/PowerState;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method
