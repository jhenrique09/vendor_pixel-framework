.class public final Lcom/google/android/systemui/columbus/fetchers/ActionFetcher$ActionListKey;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final actions:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/columbus/fetchers/ActionFetcher$ActionListKey;->actions:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v1, p1, Lcom/google/android/systemui/columbus/fetchers/ActionFetcher$ActionListKey;

    const/4 v2, 0x0

    if-nez v1, :cond_2

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/google/android/systemui/columbus/fetchers/ActionFetcher$ActionListKey;->actions:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    check-cast p1, Lcom/google/android/systemui/columbus/fetchers/ActionFetcher$ActionListKey;

    iget-object v3, p1, Lcom/google/android/systemui/columbus/fetchers/ActionFetcher$ActionListKey;->actions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v1, v3, :cond_1

    iget-object p1, p1, Lcom/google/android/systemui/columbus/fetchers/ActionFetcher$ActionListKey;->actions:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result p0

    if-eqz p0, :cond_1

    :goto_0
    return v0
.end method

.method public final hashCode()I
    .locals 1

    iget-object p0, p0, Lcom/google/android/systemui/columbus/fetchers/ActionFetcher$ActionListKey;->actions:Ljava/util/List;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Landroidx/activity/ComponentActivity$2$$ExternalSyntheticOutline0;->m(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0
.end method
