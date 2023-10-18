.class final enum Lcom/google/android/systemui/assist/uihints/GlowController$GlowState;
.super Ljava/lang/Enum;
.source ""


# static fields
.field public static final synthetic $VALUES:[Lcom/google/android/systemui/assist/uihints/GlowController$GlowState;

.field public static final enum GONE:Lcom/google/android/systemui/assist/uihints/GlowController$GlowState;

.field public static final enum SHORT_DARK_BACKGROUND:Lcom/google/android/systemui/assist/uihints/GlowController$GlowState;

.field public static final enum SHORT_LIGHT_BACKGROUND:Lcom/google/android/systemui/assist/uihints/GlowController$GlowState;

.field public static final enum TALL_DARK_BACKGROUND:Lcom/google/android/systemui/assist/uihints/GlowController$GlowState;

.field public static final enum TALL_LIGHT_BACKGROUND:Lcom/google/android/systemui/assist/uihints/GlowController$GlowState;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/google/android/systemui/assist/uihints/GlowController$GlowState;

    const-string v1, "SHORT_DARK_BACKGROUND"

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lcom/google/android/systemui/assist/uihints/GlowController$GlowState;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/systemui/assist/uihints/GlowController$GlowState;->SHORT_DARK_BACKGROUND:Lcom/google/android/systemui/assist/uihints/GlowController$GlowState;

    new-instance v1, Lcom/google/android/systemui/assist/uihints/GlowController$GlowState;

    const-string v2, "SHORT_LIGHT_BACKGROUND"

    const/4 v3, 0x1

    invoke-direct {v1, v3, v2}, Lcom/google/android/systemui/assist/uihints/GlowController$GlowState;-><init>(ILjava/lang/String;)V

    sput-object v1, Lcom/google/android/systemui/assist/uihints/GlowController$GlowState;->SHORT_LIGHT_BACKGROUND:Lcom/google/android/systemui/assist/uihints/GlowController$GlowState;

    new-instance v2, Lcom/google/android/systemui/assist/uihints/GlowController$GlowState;

    const-string v3, "TALL_DARK_BACKGROUND"

    const/4 v4, 0x2

    invoke-direct {v2, v4, v3}, Lcom/google/android/systemui/assist/uihints/GlowController$GlowState;-><init>(ILjava/lang/String;)V

    sput-object v2, Lcom/google/android/systemui/assist/uihints/GlowController$GlowState;->TALL_DARK_BACKGROUND:Lcom/google/android/systemui/assist/uihints/GlowController$GlowState;

    new-instance v3, Lcom/google/android/systemui/assist/uihints/GlowController$GlowState;

    const-string v4, "TALL_LIGHT_BACKGROUND"

    const/4 v5, 0x3

    invoke-direct {v3, v5, v4}, Lcom/google/android/systemui/assist/uihints/GlowController$GlowState;-><init>(ILjava/lang/String;)V

    sput-object v3, Lcom/google/android/systemui/assist/uihints/GlowController$GlowState;->TALL_LIGHT_BACKGROUND:Lcom/google/android/systemui/assist/uihints/GlowController$GlowState;

    new-instance v4, Lcom/google/android/systemui/assist/uihints/GlowController$GlowState;

    const-string v5, "GONE"

    const/4 v6, 0x4

    invoke-direct {v4, v6, v5}, Lcom/google/android/systemui/assist/uihints/GlowController$GlowState;-><init>(ILjava/lang/String;)V

    sput-object v4, Lcom/google/android/systemui/assist/uihints/GlowController$GlowState;->GONE:Lcom/google/android/systemui/assist/uihints/GlowController$GlowState;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/google/android/systemui/assist/uihints/GlowController$GlowState;

    move-result-object v0

    sput-object v0, Lcom/google/android/systemui/assist/uihints/GlowController$GlowState;->$VALUES:[Lcom/google/android/systemui/assist/uihints/GlowController$GlowState;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/systemui/assist/uihints/GlowController$GlowState;
    .locals 1

    const-class v0, Lcom/google/android/systemui/assist/uihints/GlowController$GlowState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/systemui/assist/uihints/GlowController$GlowState;

    return-object p0
.end method

.method public static values()[Lcom/google/android/systemui/assist/uihints/GlowController$GlowState;
    .locals 1

    sget-object v0, Lcom/google/android/systemui/assist/uihints/GlowController$GlowState;->$VALUES:[Lcom/google/android/systemui/assist/uihints/GlowController$GlowState;

    invoke-virtual {v0}, [Lcom/google/android/systemui/assist/uihints/GlowController$GlowState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/systemui/assist/uihints/GlowController$GlowState;

    return-object v0
.end method
