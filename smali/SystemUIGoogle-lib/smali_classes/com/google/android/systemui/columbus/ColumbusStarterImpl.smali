.class public final Lcom/google/android/systemui/columbus/ColumbusStarterImpl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/systemui/columbus/ColumbusStarter;


# instance fields
.field public final columbusManager:Ldagger/Lazy;

.field public started:Z


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/CoroutineDispatcher;Ldagger/Lazy;Lcom/google/android/systemui/columbus/fetchers/ColumbusSettingsFetcher;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/google/android/systemui/columbus/ColumbusStarterImpl;->columbusManager:Ldagger/Lazy;

    new-instance p3, Lcom/google/android/systemui/columbus/ColumbusStarterImpl$1;

    const/4 v0, 0x0

    invoke-direct {p3, p4, p0, v0}, Lcom/google/android/systemui/columbus/ColumbusStarterImpl$1;-><init>(Lcom/google/android/systemui/columbus/fetchers/ColumbusSettingsFetcher;Lcom/google/android/systemui/columbus/ColumbusStarterImpl;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x2

    invoke-static {p1, p2, v0, p3, p0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/systemui/columbus/ColumbusStarterImpl;->started:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/systemui/columbus/ColumbusStarterImpl;->columbusManager:Ldagger/Lazy;

    check-cast p0, Ldagger/internal/DoubleCheck;

    invoke-virtual {p0}, Ldagger/internal/DoubleCheck;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/systemui/columbus/ColumbusManager;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/systemui/columbus/ColumbusManager;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_0
    return-void
.end method
