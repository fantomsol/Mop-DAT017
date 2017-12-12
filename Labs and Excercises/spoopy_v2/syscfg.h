#ifndef SYSCFG_H
#define SYSCFG_H

typedef struct _syscfg{
    union {
        unsigned int memrmp;
        struct {
            unsigned char memrmpLow;
            unsigned char memrmpHigh;
        };
    };
    union {
        unsigned int pmc;
        struct {
            unsigned short pmcReserved;
            unsigned char pmcByte3;
        };
    };
	union{
		unsigned int exticr;
		struct{
			union {
				unsigned int exticr1;
				struct{
					unsigned char exticr1Low;
					unsigned char exticr1High;
				};
			};
			union {
				unsigned int exticr2;
				struct{
					unsigned char exticr2Low;
					unsigned char exticr2High;
				};
			};
			union {
				unsigned int exticr3;
				struct{
					unsigned char exticr3Low;
					unsigned char exticr3High;
				};
			};
			union {
				unsigned int exticr4;
				struct{
					unsigned char exticr4Low;
					unsigned char exticr4High;
				};
			};
		};
	};
    union {
        unsigned int cmpcr;
        struct {
            unsigned char cmpcrLow;
            unsigned char cmpcrHigh;
        };
    };
} _SYSCFG;

#define SYSCFG (*((volatile _SYSCFG*)0x40013800))
#endif // syscfg.h