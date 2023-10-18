.class public final enum Lcom/google/android/systemui/smartspace/CardPagerAdapter$TransitionType;
.super Ljava/lang/Enum;
.source ""


# static fields
.field public static final synthetic $VALUES:[Lcom/google/android/systemui/smartspace/CardPagerAdapter$TransitionType;

.field public static final enum NOT_IN_TRANSITION:Lcom/google/android/systemui/smartspace/CardPagerAdapter$TransitionType;

.field public static final enum TO_AOD:Lcom/google/android/systemui/smartspace/CardPagerAdapter$TransitionType;

.field public static final enum TO_LOCKSCREEN:Lcom/google/android/systemui/smartspace/CardPagerAdapter$TransitionType;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/google/android/systemui/smartspace/CardPagerAdapter$TransitionType;

    const-string v1, "NOT_IN_TRANSITION"

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lcom/google/android/systemui/smartspace/CardPagerAdapter$TransitionType;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/systemui/smartspace/CardPagerAdapter$TransitionType;->NOT_IN_TRANSITION:Lcom/google/android/systemui/smartspace/CardPagerAdapter$TransitionType;

    new-instance v1, Lcom/google/android/systemui/smartspace/CardPagerAdapter$TransitionType;

    const-string v2, "TO_LOCKSCREEN"

    const/4 v3, 0x1

    invoke-direct {v1, v3, v2}, Lcom/google/android/systemui/smartspace/CardPagerAdapter$TransitionType;-><init>(ILjava/lang/String;)V

    sput-object v1, Lcom/google/android/systemui/smartspace/CardPagerAdapter$TransitionType;->TO_LOCKSCREEN:Lcom/google/android/systemui/smartspace/CardPagerAdapter$TransitionType;

    new-instance v2, Lcom/google/android/systemui/smartspace/CardPagerAdapter$TransitionType;

    const-string v3, "TO_AOD"

    const/4 v4, 0x2

    invoke-direct {v2, v4, v3}, Lcom/google/android/systemui/smartspace/CardPagerAdapter$TransitionType;-><init>(ILjava/lang/String;)V

    sput-object v2, Lcom/google/android/systemui/smartspace/CardPagerAdapter$TransitionType;->TO_AOD:Lcom/google/android/systemui/smartspace/CardPagerAdapter$TransitionType;

    filled-new-array {v0, v1, v2}, [Lcom/google/android/systemui/smartspace/CardPagerAdapter$TransitionType;

    move-result-object v0

    sput-object v0, Lcom/google/android/systemui/smartspace/CardPagerAdapter$TransitionType;->$VALUES:[Lcom/google/android/systemui/smartspace/CardPagerAdapter$TransitionType;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/systemui/smartspace/CardPagerAdapter$TransitionType;
    .locals 1

    const-class v0, Lcom/google/android/systemui/smartspace/CardPagerAdapter$TransitionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/systemui/smartspace/CardPagerAdapter$TransitionType;

    return-object p0
.end method

.method public static values()[Lcom/google/android/systemui/smartspace/CardPagerAdapter$TransitionType;
    .locals 1

    sget-object v0, Lcom/google/android/systemui/smartspace/CardPagerAdapter$TransitionType;->$VALUES:[Lcom/google/android/systemui/smartspace/CardPagerAdapter$TransitionType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/systemui/smartspace/CardPagerAdapter$TransitionType;

    return-object v0
.end method
