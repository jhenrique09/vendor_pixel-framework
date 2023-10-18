.class public final Lcom/google/android/systemui/columbus/legacy/actions/LaunchApp$keyguardUpdateMonitorCallback$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source ""


# instance fields
.field public final synthetic $context:Landroid/content/Context;

.field public final synthetic this$0:Lcom/google/android/systemui/columbus/legacy/actions/LaunchApp;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/columbus/legacy/actions/LaunchApp;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/columbus/legacy/actions/LaunchApp$keyguardUpdateMonitorCallback$1;->this$0:Lcom/google/android/systemui/columbus/legacy/actions/LaunchApp;

    iput-object p2, p0, Lcom/google/android/systemui/columbus/legacy/actions/LaunchApp$keyguardUpdateMonitorCallback$1;->$context:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKeyguardBouncerFullyShowingChanged(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/systemui/columbus/legacy/actions/LaunchApp$keyguardUpdateMonitorCallback$1;->this$0:Lcom/google/android/systemui/columbus/legacy/actions/LaunchApp;

    iget-object v0, p1, Lcom/google/android/systemui/columbus/legacy/actions/LaunchApp;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    iget-object v0, p1, Lcom/google/android/systemui/columbus/legacy/actions/LaunchApp;->mainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/systemui/columbus/legacy/actions/LaunchApp$updateAvailableAppsAndShortcutsAsync$$inlined$traceRunnable$1;

    iget-object p0, p0, Lcom/google/android/systemui/columbus/legacy/actions/LaunchApp$keyguardUpdateMonitorCallback$1;->$context:Landroid/content/Context;

    invoke-direct {v1, p1, p0}, Lcom/google/android/systemui/columbus/legacy/actions/LaunchApp$updateAvailableAppsAndShortcutsAsync$$inlined$traceRunnable$1;-><init>(Lcom/google/android/systemui/columbus/legacy/actions/LaunchApp;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
