.class public final Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle$1;
.super Landroid/content/BroadcastReceiver;
.source ""


# instance fields
.field public final synthetic this$0:Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle$1;->this$0:Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    const-string p1, "com.google.android.systemui.adaptivecharging.ADAPTIVE_CHARGING_DEADLINE_SET"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle$1;->this$0:Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;

    invoke-virtual {p0}, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;->triggerAdaptiveChargingStatusUpdate()V

    :cond_0
    return-void
.end method
