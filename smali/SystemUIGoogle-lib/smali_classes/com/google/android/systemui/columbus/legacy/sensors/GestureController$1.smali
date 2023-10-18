.class final Lcom/google/android/systemui/columbus/legacy/sensors/GestureController$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic this$0:Lcom/google/android/systemui/columbus/legacy/sensors/GestureController;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/columbus/legacy/sensors/GestureController;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/columbus/legacy/sensors/GestureController$1;->this$0:Lcom/google/android/systemui/columbus/legacy/sensors/GestureController;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    new-instance v0, Lcom/google/android/systemui/columbus/legacy/sensors/GestureController$ColumbusCommand;

    iget-object p0, p0, Lcom/google/android/systemui/columbus/legacy/sensors/GestureController$1;->this$0:Lcom/google/android/systemui/columbus/legacy/sensors/GestureController;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/columbus/legacy/sensors/GestureController$ColumbusCommand;-><init>(Lcom/google/android/systemui/columbus/legacy/sensors/GestureController;)V

    return-object v0
.end method
