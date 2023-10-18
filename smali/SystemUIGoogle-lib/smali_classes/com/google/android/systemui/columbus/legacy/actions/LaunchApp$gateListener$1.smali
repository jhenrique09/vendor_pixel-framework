.class public final Lcom/google/android/systemui/columbus/legacy/actions/LaunchApp$gateListener$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/systemui/columbus/legacy/gates/Gate$Listener;


# instance fields
.field public final synthetic this$0:Lcom/google/android/systemui/columbus/legacy/actions/LaunchApp;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/columbus/legacy/actions/LaunchApp;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/columbus/legacy/actions/LaunchApp$gateListener$1;->this$0:Lcom/google/android/systemui/columbus/legacy/actions/LaunchApp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGateChanged(Lcom/google/android/systemui/columbus/legacy/gates/Gate;)V
    .locals 0

    invoke-virtual {p1}, Lcom/google/android/systemui/columbus/legacy/gates/Gate;->isBlocking()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/google/android/systemui/columbus/legacy/actions/LaunchApp$gateListener$1;->this$0:Lcom/google/android/systemui/columbus/legacy/actions/LaunchApp;

    invoke-virtual {p0}, Lcom/google/android/systemui/columbus/legacy/actions/LaunchApp;->updateAvailableAppsAndShortcutsAsync()V

    :cond_0
    return-void
.end method
