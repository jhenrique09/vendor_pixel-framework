.class public final Lcom/google/android/systemui/columbus/legacy/gates/CameraVisibility$taskStackListener$1;
.super Landroid/app/TaskStackListener;
.source ""


# instance fields
.field public final synthetic this$0:Lcom/google/android/systemui/columbus/legacy/gates/CameraVisibility;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/columbus/legacy/gates/CameraVisibility;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/columbus/legacy/gates/CameraVisibility$taskStackListener$1;->this$0:Lcom/google/android/systemui/columbus/legacy/gates/CameraVisibility;

    invoke-direct {p0}, Landroid/app/TaskStackListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTaskStackChanged()V
    .locals 3

    iget-object p0, p0, Lcom/google/android/systemui/columbus/legacy/gates/CameraVisibility$taskStackListener$1;->this$0:Lcom/google/android/systemui/columbus/legacy/gates/CameraVisibility;

    iget-object v0, p0, Lcom/google/android/systemui/columbus/legacy/gates/Gate;->coroutineScope:Lkotlinx/coroutines/internal/ContextScope;

    new-instance v1, Lcom/google/android/systemui/columbus/legacy/gates/CameraVisibility$updateCameraIsShowing$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/systemui/columbus/legacy/gates/CameraVisibility$updateCameraIsShowing$1;-><init>(Lcom/google/android/systemui/columbus/legacy/gates/CameraVisibility;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    return-void
.end method
