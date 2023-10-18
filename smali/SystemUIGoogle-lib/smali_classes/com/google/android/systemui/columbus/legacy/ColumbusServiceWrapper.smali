.class public final Lcom/google/android/systemui/columbus/legacy/ColumbusServiceWrapper;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/systemui/columbus/ColumbusStarter;


# instance fields
.field public final columbusService:Ldagger/Lazy;

.field public final columbusSettings:Lcom/google/android/systemui/columbus/legacy/ColumbusSettings;

.field public final settingsChangeListener:Lcom/google/android/systemui/columbus/legacy/ColumbusServiceWrapper$settingsChangeListener$1;

.field public started:Z


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/columbus/legacy/ColumbusSettings;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusServiceWrapper;->columbusSettings:Lcom/google/android/systemui/columbus/legacy/ColumbusSettings;

    iput-object p2, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusServiceWrapper;->columbusService:Ldagger/Lazy;

    new-instance v0, Lcom/google/android/systemui/columbus/legacy/ColumbusServiceWrapper$settingsChangeListener$1;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/columbus/legacy/ColumbusServiceWrapper$settingsChangeListener$1;-><init>(Lcom/google/android/systemui/columbus/legacy/ColumbusServiceWrapper;)V

    iput-object v0, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusServiceWrapper;->settingsChangeListener:Lcom/google/android/systemui/columbus/legacy/ColumbusServiceWrapper$settingsChangeListener$1;

    invoke-virtual {p1}, Lcom/google/android/systemui/columbus/legacy/ColumbusSettings;->isColumbusEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p1, p1, Lcom/google/android/systemui/columbus/legacy/ColumbusSettings;->listeners:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusServiceWrapper;->started:Z

    check-cast p2, Ldagger/internal/DoubleCheck;

    invoke-virtual {p2}, Ldagger/internal/DoubleCheck;->get()Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v0}, Lcom/google/android/systemui/columbus/legacy/ColumbusSettings;->registerColumbusSettingsChangeListener(Lcom/google/android/systemui/columbus/legacy/ColumbusSettings$ColumbusSettingsChangeListener;)V

    check-cast p3, Ldagger/internal/DoubleCheck;

    invoke-virtual {p3}, Ldagger/internal/DoubleCheck;->get()Ljava/lang/Object;

    :goto_0
    check-cast p4, Ldagger/internal/DoubleCheck;

    invoke-virtual {p4}, Ldagger/internal/DoubleCheck;->get()Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusServiceWrapper;->started:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusServiceWrapper;->columbusService:Ldagger/Lazy;

    check-cast p0, Ldagger/internal/DoubleCheck;

    invoke-virtual {p0}, Ldagger/internal/DoubleCheck;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/systemui/columbus/legacy/ColumbusService;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/systemui/columbus/legacy/ColumbusService;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_0
    return-void
.end method
