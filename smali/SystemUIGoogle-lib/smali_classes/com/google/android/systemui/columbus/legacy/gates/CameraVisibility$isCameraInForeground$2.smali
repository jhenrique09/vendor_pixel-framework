.class final Lcom/google/android/systemui/columbus/legacy/gates/CameraVisibility$isCameraInForeground$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.google.android.systemui.columbus.legacy.gates.CameraVisibility$isCameraInForeground$2"
    f = "CameraVisibility.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lcom/google/android/systemui/columbus/legacy/gates/CameraVisibility;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/columbus/legacy/gates/CameraVisibility;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/columbus/legacy/gates/CameraVisibility$isCameraInForeground$2;->this$0:Lcom/google/android/systemui/columbus/legacy/gates/CameraVisibility;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0

    new-instance p1, Lcom/google/android/systemui/columbus/legacy/gates/CameraVisibility$isCameraInForeground$2;

    iget-object p0, p0, Lcom/google/android/systemui/columbus/legacy/gates/CameraVisibility$isCameraInForeground$2;->this$0:Lcom/google/android/systemui/columbus/legacy/gates/CameraVisibility;

    invoke-direct {p1, p0, p2}, Lcom/google/android/systemui/columbus/legacy/gates/CameraVisibility$isCameraInForeground$2;-><init>(Lcom/google/android/systemui/columbus/legacy/gates/CameraVisibility;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/systemui/columbus/legacy/gates/CameraVisibility$isCameraInForeground$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/google/android/systemui/columbus/legacy/gates/CameraVisibility$isCameraInForeground$2;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/columbus/legacy/gates/CameraVisibility$isCameraInForeground$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget v0, p0, Lcom/google/android/systemui/columbus/legacy/gates/CameraVisibility$isCameraInForeground$2;->label:I

    if-nez v0, :cond_4

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/systemui/columbus/legacy/gates/CameraVisibility$isCameraInForeground$2;->this$0:Lcom/google/android/systemui/columbus/legacy/gates/CameraVisibility;

    iget-object v0, p1, Lcom/google/android/systemui/columbus/legacy/gates/CameraVisibility;->packageManager:Landroid/content/pm/PackageManager;

    iget-object p1, p1, Lcom/google/android/systemui/columbus/legacy/gates/CameraVisibility;->activityManager:Ldagger/Lazy;

    check-cast p1, Ldagger/internal/DoubleCheck;

    invoke-virtual {p1}, Ldagger/internal/DoubleCheck;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/IActivityManager;

    invoke-interface {p1}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object p1

    iget p1, p1, Landroid/content/pm/UserInfo;->id:I

    const-string v1, "com.google.android.GoogleCamera"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object p0, p0, Lcom/google/android/systemui/columbus/legacy/gates/CameraVisibility$isCameraInForeground$2;->this$0:Lcom/google/android/systemui/columbus/legacy/gates/CameraVisibility;

    iget-object p0, p0, Lcom/google/android/systemui/columbus/legacy/gates/CameraVisibility;->activityManager:Ldagger/Lazy;

    check-cast p0, Ldagger/internal/DoubleCheck;

    invoke-virtual {p0}, Ldagger/internal/DoubleCheck;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/IActivityManager;

    invoke-interface {p0}, Landroid/app/IActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v5, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    if-ne v5, p1, :cond_1

    iget-object v4, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-static {v4, v1, v3}, Lkotlin/text/StringsKt__StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v3

    goto :goto_0

    :cond_1
    move v4, v2

    :goto_0
    if-eqz v4, :cond_0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    if-eqz v0, :cond_3

    iget p0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 p1, 0x64

    if-ne p0, p1, :cond_3

    move v2, v3

    :cond_3
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
