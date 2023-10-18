.class public final Lcom/google/android/systemui/smartspace/LazyServerFlagLoader;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final mPropertyKey:Ljava/lang/String;

.field public mValue:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/systemui/smartspace/LazyServerFlagLoader;->mValue:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/google/android/systemui/smartspace/LazyServerFlagLoader;->mPropertyKey:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final get()Z
    .locals 3

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/LazyServerFlagLoader;->mValue:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const-string v0, "launcher"

    iget-object v1, p0, Lcom/google/android/systemui/smartspace/LazyServerFlagLoader;->mPropertyKey:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/systemui/smartspace/LazyServerFlagLoader;->mValue:Ljava/lang/Boolean;

    new-instance v1, Landroidx/profileinstaller/ProfileInstaller$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroidx/profileinstaller/ProfileInstaller$$ExternalSyntheticLambda0;-><init>()V

    new-instance v2, Lcom/google/android/systemui/smartspace/LazyServerFlagLoader$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/google/android/systemui/smartspace/LazyServerFlagLoader$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/systemui/smartspace/LazyServerFlagLoader;)V

    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    :cond_0
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/LazyServerFlagLoader;->mValue:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method
