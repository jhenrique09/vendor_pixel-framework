.class public final Lcom/google/android/systemui/columbus/legacy/sensors/GestureController$ColumbusCommand;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/systemui/statusbar/commandline/Command;


# instance fields
.field public final synthetic this$0:Lcom/google/android/systemui/columbus/legacy/sensors/GestureController;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/columbus/legacy/sensors/GestureController;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/columbus/legacy/sensors/GestureController$ColumbusCommand;->this$0:Lcom/google/android/systemui/columbus/legacy/sensors/GestureController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final execute(Ljava/io/PrintWriter;Ljava/util/List;)V
    .locals 4

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const-string v1, "  trigger"

    const-string v2, "Available commands:"

    const-string v3, "usage: quick-tap <command>"

    if-eqz v0, :cond_0

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    const-string v0, "trigger"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p0, p0, Lcom/google/android/systemui/columbus/legacy/sensors/GestureController$ColumbusCommand;->this$0:Lcom/google/android/systemui/columbus/legacy/sensors/GestureController;

    iget-object p0, p0, Lcom/google/android/systemui/columbus/legacy/sensors/GestureController;->gestureSensorListener:Lcom/google/android/systemui/columbus/legacy/sensors/GestureController$gestureSensorListener$1;

    const/4 p1, 0x1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/systemui/columbus/legacy/sensors/GestureController$gestureSensorListener$1;->onGestureDetected(ILcom/google/android/systemui/columbus/legacy/sensors/GestureSensor$DetectionProperties;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
