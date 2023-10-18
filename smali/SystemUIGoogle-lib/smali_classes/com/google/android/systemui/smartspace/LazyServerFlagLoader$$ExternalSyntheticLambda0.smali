.class public final synthetic Lcom/google/android/systemui/smartspace/LazyServerFlagLoader$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# instance fields
.field public final synthetic f$0:Lcom/google/android/systemui/smartspace/LazyServerFlagLoader;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/systemui/smartspace/LazyServerFlagLoader;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/smartspace/LazyServerFlagLoader$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/systemui/smartspace/LazyServerFlagLoader;

    return-void
.end method


# virtual methods
.method public final onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .locals 2

    iget-object p0, p0, Lcom/google/android/systemui/smartspace/LazyServerFlagLoader$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/systemui/smartspace/LazyServerFlagLoader;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/systemui/smartspace/LazyServerFlagLoader;->mPropertyKey:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v1, v0}, Landroid/provider/DeviceConfig$Properties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/smartspace/LazyServerFlagLoader;->mValue:Ljava/lang/Boolean;

    :cond_0
    return-void
.end method
