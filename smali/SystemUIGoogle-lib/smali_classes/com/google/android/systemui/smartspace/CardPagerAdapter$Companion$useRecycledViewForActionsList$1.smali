.class public final Lcom/google/android/systemui/smartspace/CardPagerAdapter$Companion$useRecycledViewForActionsList$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/IntPredicate;


# instance fields
.field public final synthetic $newActionsList:Ljava/util/List;

.field public final synthetic $recycledActionsList:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/smartspace/CardPagerAdapter$Companion$useRecycledViewForActionsList$1;->$newActionsList:Ljava/util/List;

    iput-object p2, p0, Lcom/google/android/systemui/smartspace/CardPagerAdapter$Companion$useRecycledViewForActionsList$1;->$recycledActionsList:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(I)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/CardPagerAdapter$Companion$useRecycledViewForActionsList$1;->$newActionsList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/smartspace/SmartspaceAction;

    iget-object p0, p0, Lcom/google/android/systemui/smartspace/CardPagerAdapter$Companion$useRecycledViewForActionsList$1;->$recycledActionsList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/smartspace/SmartspaceAction;

    invoke-static {v0, p0}, Lcom/google/android/systemui/smartspace/CardPagerAdapter$Companion;->useRecycledViewForAction(Landroid/app/smartspace/SmartspaceAction;Landroid/app/smartspace/SmartspaceAction;)Z

    move-result p0

    return p0
.end method
