<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>맛집 지도</title>
<script src="https://www.gstatic.com/swiffy/v7.1/runtime.js"></script>
<script>
	swiffyobject = {
		"internedStrings" : [
				"methods",
				"::::::",
				"specials",
				"PACKAGE",
				":60s:a0Hjb3R5e68C5eb6I:2SObA9cJ4fbJzJ6eaPvaImaOeb:0dH8gbBlLvbsuz9ebdun1dbSuY9ebE1d5C1fb:0dL6gbGyH4fb3G7b0P0dbF4c4C1ebPiZ9bbJjUkb2Ef9G9bbF4cV4eb9F5h8O6nb:0dS6fbOtA4ga:0db:jeoaoeaQ1dbCiCsa:tb8I9e4T9eb6H:6Q9Cb5P5H80B0Vb:0dL6gbGyH4fba9cj4fbjzj6ebtt0c4db4d2j0k6qa:0da:ta:tbttz4db6c4m4k6ubF4c5C0eb9BpY0gapvb8b4e4j8eb:jckb2n4e7u9pb:0df9gbj5f4c1lb7k8d5y8db6j:5v8Bbf4C1c2Eb8f9D9j8Lb9bN3fNb3e:7k4cbf4c7b4eb1i8h3s6pb1s0e46c0eb9t:54c0IbA9CT0FbSUT0Fa9c5Dbx2C1d5Gb8g8b7n8bb7c:3gHb4cF9d6Cbu4D1e4Hbt:6cHahDa6cHbf4C6c9DbwLx1Ebo5E7C2Fb7BCW8Eb3i7B0p0HbSUT0Fa:0Fa0D0DaTTa:0Da:Ta:TbTT1C4DbW2E9F6Gay1Pb9b93B5D99Db4cF4eZb5g5G6h4Ub0J0F0V0Jac0Hbg0Hq0Pb:TJ7Bb0CW0G3Cb7C1E6L1Eb1D:4IkaDla2CpaDlbWD3DDb0E:7GxbTT3D7Cb5K5H7U3Ra:Jc",
				":00w:a9OjaAjb4D6e1F0nbO4g9E0la8Cfb9M7d2Z4kb2Mh0X0db9G1f8K4qb4D4l2J6xa8b2nbl8el8kb8H2e8K0pb9I50cr60gaUrb5Cz3E5fbP7cZ7gb7Em8H4ebLp2Cza9Ixa1FpaDLa2CPaDLb7EN7JNb0E:2Inb4F6c4H9kbU6h6C1rb5Ey1J8eb5F6d9K2jbOA9BAb6M:1U1fbjjjsbD5gh9jbr7d2d2gb3e7b8k6dbldvna5cyaigbph6cha3j8ib7q2p97c82ba8n8jb4k0h2s2saajb7ll9u0eay5cajjaeob50c0g80f0pb2c8d0e3jbq0e0g7eabkbse8cebs:8cDabKb1c8Ee5HbEEEOa:Tb:JeOb8g2H5u5Jb3dQ7f6EahIaeOa:0Db:0Ff9Kbd1Dn1Ha7i6Da3h4EbP4DS0JaATa:TaLDbW1E7C9IbK7CK7GbjTy5CajJaeOa2k6EbhDhXbV8C5E6FaJIaOEb7B3H2F9Nb1D8G8I1Mb0DJ6G8BaIGbEEOEbJ0D5C5FaEOa:Tb:JeOa4g6FauSbA9CW5EaLJaEOa:TbA1Gz6KbnX4c4Dbc3N4C6Yb7C3K6H4Vb6EX7H7HbEJg3Eb7b3Cu0JaATa:Tb8CV0D0Ha:Ta:Tb0c0E8g2HavRbd6E2c9HbrU8d1CalVbl4E8c1Ibt7B0c7Fa9gWb8eT1j7Eb8eB9h0CbkJ7bRadLbu1I6E3Ra24C77Cb:0FJ8KaEGaEOaBJa8IJb5C5D4I3GbPGZ7Bc",
				":02z:b4C:2F7db0Dt6G5da4N5ia8GIaBKa9I2Fb9CT1F8Eb0C:4Elb6P8h06C8tae9caj2dae9cb:tH6cbKyF3fbg1dV1dbB:D:bN:8B:b1O:92B0db0E0c0I0ga0G0gb1CE6EEb5E:4HybJjKubD3e2C5ga7Cxa2J3cb6Ci8E7bbT0g0F5lbW2c0D5ga6ChaHdbPh6Cha3F7gb2L8m7Y3za:0da:0ha:0faovbr5dy2hbg6c6c6cbb:d:ac9cam2had9eb7B3e6G6hb8BtX4gb0Dj8GyaVoa7F5ka3Q5xakube4er4hbkyk5ea9evb0dq1h8ca3d0gbs3c7f3cbn:0cCanVbl2C0d8Daz0Cb7i0D3w0Dbc:g:b25c5h60e0za6chahda6chb:tf8cbdlpramiaeob8ek2j7cb7e4c8i3ha80f0Da0g7Db0cW0g3Ca5j6Mb6u83B15c84Fb6C4D5F9JbHQy1EaBKb8HV8Y9BaCKb5CK3E2CaX7Cbe5H2e6Lb0e2D8d4MbY5E0H0Ha0DTab0Rbb6Er0Ja1g9Db1c9B9h1Ca3g4Jb0c3E7b6Mbt:6cHahDa6cHarUbv9B0e3DbyMl6EbD6G1C5LbS5C9B5Ga7f2Db7d3C3e8IbF5F0F1Hb7CK0D9Eb:Te9CbeUq9CarVaD9CbH3Di8EboMo3DaEOa3E7Da2D8Cb0D:2FTb0C7B6E7Bc",
				":63s:aWbaNka7ByajpabxbFcKhaSjaawbc0cF7db8Db1G9bbD:H:b7C:6Era:wa:rbjaojanya:wa:7daEfbSt7D9baKgaMkaLdb8Be9B6cbc3ct1eb3c4c3c1ja8BsbTr0C6da7DfbM2C2C7Ea7I9Ka:WaFRa9BFaJGaYVbMBWBbS:9BhaK4cbFwS2db9Dl7H5ca0GlbRr7B2dbP4d8C1hb:kcrbjxi8eb0Cs8C9ebT0ji9tbJbOjbKoN7caGdbRf9Bta6DkaACaJEaACbQD1CDbN:ZebSdY7bbHyK0faVna2D3ca2OFaMPbUT1E1CaACa4CNbW0C4E1Eb8I9F0R4ObF:JcaYiaElaBdaEaa:xa:1da:cb2c:5czbAsM9bbVr5D5caaubJwX8ca7DfaUqb8BoZ9ebYm7D9bbDoauaw3da3Elb:fchahfaacb7Cf4Fxbdosxa1e4cadabli1ckakkaffa5ffapybos6c4cax:a0g5Ca7hea8bvbtjy7cafcbzfqnaEra0C5ca:wa:9eaklblqr0dbE0cY6db7Bu3C5fbJbMlaElaLebTfW0cbcomvbyp6d6cbDmeoaaca:faGebVl4C6cbcys9ca9c7cbimrmbi:qMbjBpHahPb3dc8e5cbCrlrbi:wFamKakGaBWaDWamKadGalFalFbyG9cXbsY8d0Da:Wa:Rb:FcIahEaaCbyj4dzb6c1c1f3gaawb:yG1dacsacpaoyaz0da:ka:fa:fao0cbh9bz6daJobIdHtaegbho1cqaxobyn0d7cabwbbsj6ca0neanNbrO7b8CbhDrDbo:4cjat7ba5d7cb5en0jnb1f:4jZaFQaFRalMalVa4ffbjBnKaoXakBabBakBbaJjNbgDgObePKRbHAFQboL1dLbe:kaaeFaaFa:EaqCabBaeAax5Cbp0C9c0Cba:a:bjboiaz8ca:ra:fa:eaimabkagdbrf8bsblawab7c:9eMakGabCaeAbdQk8Bax2DaaCa8bcagwbgxv1daCvaBsahqacfapjahhaNlbZl3C0dbDpBuas4da5fkal8ba4c7cbjAtAb5d:0hlbnf7bfbm:zFbebgbbe:AHbCE:QbDPbVboNv7CaHObIIJYb6gL4m1DaDSbHOG0Daw8Ba5c2Dbiaqab2c:3eMalDbkBrGalhbiceoa5c:aiMacPaeFbgKxLa:Ka:Fa:FbtL7dRallaefbeajaby:1cSaV8BbWQX3EbkN8bNbm:0chalfaqqa1dFahHbvL3c3Ca:Wa:RboP4c7Bb2cR0c6FaoJaiYbFFDQbbLGLbA:A:aGGbODPQb0G:7KWaK0CbHXM2EalMbdD:PaaCbtE8bUbjAiQbBPc9BajCbpL7cUb:KcRahWaCRaHVakMar4CaqHafDbcOkXbtU8d4Cb0cr8erb8b:3eRbn0Ch0FaN5GaIMbGTT4CaETbEHAZaLLbIHKWakMbjLl4CaFLaWWaNda7Bsb4Cb9ElaPna0F8caFdbXb9Btb3Cm6GqaGiaPoa9Eqa:da5CnaKfa9E5cbFdTdbN:7CCaMIbIEKObDYh4CbpOv2DaFFbJP9BWaAWbB5Cf9EaeAbpP2dVanUbpPo9DakCabAakBbbJjObkEmTbdP:VaQ7CaeFa0c4CbcMCQa7BXaAUbdImIb:KfSbdF:UaGJaVTb1DE6GQaDSaBJbDMbQa7bXakCabAakBagJavNa:Wa:WbIFKRbE8BX1Db3ET3LWaaSae5DaFFbNM5CRaMIbOGPZa7hWbb7CF1FbQ7DW3JbKAOGaBJagJa8bZakLbdD:QaIPbFPTYbPd9Bdb7B:7DOanCblJj2CbPW8CWbO:3Cka2EwbM9b4E9bbE:J:bPt7DxbcMDPaTSbJbRbbY:0DTbJFTFbJ:UfbQr7DxbLKR9BaK3Ea8EFaOJaIHa:Bc",
				":68m:bJ:S:b8N2c6W5lb1N8n04C75bb0E0g4H9ob5C2i6K1nb00C0h60E0taEqbV6c1D5ibHxf8hb0e1d0n1dbj:t:b:jckb5ck3e2cbnqx7cbG3k1F9qb9D1f9G1nb9c2n8d01cbh5n8D9wacsbn4d1c5gbv0d6f6da:ta:0da:0dbkBuBb1f:0e4hbK8g9d8ia9i1Nb1f9I4m9Ibd:g:avpb1du4f1fbx3d4e3ha:ta:0da:0dbj:ldapubyml5ea9d6ca1g4db2dd0hdb2l:0t4Da8cVavRb:JeOb1d9C0g8Ib7b5E5d7LabKbyF5dFb3c:3eqb:ti5cby1d5d0jbp5d6d5ha:0db:0cO3dbQoE7eadranxav8cascbug6cvay5caEob0D0d0I2gb7D1c5F3iacsa8b8ia9b3jb8kn0v0dbu9f6e7kb5d2f4j3jbyA9dAb2p:91b1db8du3iub5d:8hUbt:0cJbjJbNbXML6EaaTbh1E5c3Hb3c9C4d7IaDLb0CN5D3DbO0CK5Hb1z9C60d0NaBSaW6HbO5DO5Ib5e5E3i7Kb6d4G7j3Lb2cc1fcb7j:9q3DbtJ1dNb7cH9eZaeoboo6crb2ces7da0l:b:JeOaw1CblXl4EbjTwVb1gN7g8Ga:Ta:0Da:0FbJ:MEb7C5E9F4Kb1C8E8C1Nb7EM3I7Db0C0C7D3Ga:Ta:Ta:Ta:Tb7D3D0G7KbY8G0I3Lb2G7C0R0Da1G0Db5I4E9P0La1DRb1R0G79C2Lb8I2J5L2Zb2D6Y5C58Db6G3G6Q7Lb2Q4I04C3Wa0V0DaDLb8M8F7Y8Fc",
				":38c38c",
				":40j:b0C:8Doa2G5fa:0fa:0pb4ip0l0jb:tJ1ca0S9rb:0cJ6eb0C4g0G4na0PtaVrb4K6g8M2xb5H5d0P0jb:0cm2eb4d1g7f8pa0R0daeqa5c3db5Lt0V0hb2k7j0x0tb3e7b0l0da5cyay5cb6cC9fCb7h:1owaqvb1f0k3p8qa0h:a0x0Lb6eL3kLb3i:7r2cb:jckb3n3d7q9rardb5g5c2f6ebm3dA7ea9K3la:0fa:0vbb:e:b9b:3dwb7c2f2e7obm3dF8eb1N5k4S22cbTjZzbO3c4C4ebT:5Cib2F4c5H1kb:jepb3h6j5s4rb:thybyml5eaPeb8F1f4L5mbL3d:7eb5i8j0t3tb0c6d0f6db0c:0f5Da5cYa5d5Eb0oj0t0lbK1f0d1fb0c:0hUbtJ9bZbq8B1e4CaA0FbC6ES0Ja5cYay5Cbt:6cHbxL4d2Cb3p7I00c0Va:0Fa:0Hb:JeQa5c3Dbt:5chb7s0k05c12cb8bE0eEb8g:0i5fb:0cm3ea7f7ja0l0db4g2d5m2db5h:5n2HaC0FbH8Ic0LarUb2k9O2x99Ba0jTb:Tj7Bb0cW0e3Eb1dp6fpb5d:4c6EamVbg8Bg8Ebc:f:b9b:0d9BbhQF1Gb:0CO6DbSTE4GbL2DI1Eb0e8L9j9Vb7jo0tob8y:00d5Kbm2D:7Eb7E7F0J3NaRDb1O7F2T6Wa00G0Pb:TJ7Bb0CW0E3Ea0TTaW8Cb6F3I7O2Pa0H0DbJJULb1CES8Da0DTb2W8K80C20Cb9HU0N0Ha6CHa4D2CbT:5CIb5H1E5N1Ma:0Fb:0H0D0Lb7I3C0T0Fb4G6K0V0Pb7D3D0L0FaENb22D80C35H66Fc",
				"button_3",
				"button_4",
				"button_1",
				":77f:bQ:7Cgb5J5d0T0jb1CL1ELb1D:9B2ea6E7fb6G1i4J3wbJtUub4Ed9C9ea9c3dbnoa7ebn4eE4gbOpO6da4d7gb8k1r6o43da7B7gb4C2g3E3pb4cf4ezbttz4eaZ1cb1F2d4I9jattb0e0e0l0hbi1e1c6ha9l4ub8cb0ftb9c1c0d0jb0G0g0R0jaa0hbd5j9e0pb:0cf9ean1daEmb3I9e5S7jaC0lbF1o7I0vb4Lp0T0hb:0dK7gbP6e9B3la8c1fb1n0y62c19db3k8D3u8Db0j:8r8db9dd5idb3z:65d4Lbob8bbb7d:2gVa8cVavRbk9C7b8Fb3d2G3g2Oa6d7Cb6l1J4w3VbA9CX1Eb0CO6C9Db2Ce9Eeb2J:1N5Fba9Ci4Fbl5C1c6EbTT2C4Db8B6E8D6Ka6f8Eb1p5L4y22Cb8cB2eYb7d6G8j5MaN1DbF9BF9EaPVaIMbEEOEa:0Fa:0DbNdYdb4C:5D4CbBGj0EbsUt0Fa:0Ha3CZb9B2C7F4EbOB8BBb7F:2I2db7Dt2Itb5D:7HSbA9CI4FbY0Gi6Ib:JDMb1G2D6M7Hb:0Dm5Gbl0Cg5Ha::b6Dg0Jgb6J:0X7Ba8CWa2D7CbTJ1DOb5HS9I5Jba9Cs1Fb8b2C1d9GbjJuKb3gD9g9Fbn4EE4GbOPO6Dba9Cg4Fbm6Dm6Ib8CV4F6Fb2I8O6M74CbJJMVbM8E0H8EbC:G:aATbN7J2H7Jc",
				"button_2",
				"button_9",
				"button_7",
				"button_8",
				"button_5",
				"button_6",
				":62z:bS:9Ceb6K4g80B0jb2M8h0Z0raUkb1Hg9I9fb3K7d0Z0faZ0cb4Ct4E0eb1I9c0T0faCkb4Fv7K9da0Dub8Cu0F9eb3Cf3C0dbAfm0fbL3dG3ebn7b1d7bbc:f:a::aA0hbB7jS0taPvb1S81c84D58fb22C8i00G0naA0hbI0wu20da1c4db7b8e9f6ib0h0c0r0db4g5e0r0ha8cwa2d7cb8l2d0v0lb5nf0x0fbN4eb4gb5i9l8m06ca1dpb2dl9e4dbsu3c5ea7j5zb0kj0p0hbtc8ccb3h:2j3Fa9C2Db7H2I1L8Wb8c7D8i7Db5d:2j7ba0dub8cu0f9ebd:g:b6g:3mTbjTz8Bb5g1D4k2Ka:0Ha:0Fa5dFb5n4J5q14Cb4cF9d6Ca1c4HbSUN9Ebg1DW1DbA:C:bJTXWb0EM6E7Eb9WB00D0HbSU1C6Eb3C0J9D4Va9c2DbnOa8EabKb0gQ8i9Fb4cF9b1FbE5Ek9Ibt:3cIb7e1D7l1Gba9Cl4Fbr6C8b6GbA9CL4FbR6C8B6Ga9c4Db0d7D1f6KavMb6cI8e7Bb:Tj3Cb7g0J0s7Pb3j2f8s2fb5i:3r1Fb4cF8b1FbT7T8D99CbTT9B4Db7B0G1G6Kb:0DR9FbP7BB1Ia0D0Db1C9B0D0Ha9c4Db6c1D1d6KaDRb2D7H7K7Hc" ],
		"tags" : [
				{
					"frames" : [],
					"scenes" : [ {
						"name" : "장면 1",
						"offset" : 0
					} ],
					"type" : 23
				},
				{
					"bounds" : [ {
						"ymin" : 0,
						"ymax" : 4070,
						"xmin" : 0,
						"xmax" : 3620
					} ],
					"id" : 1,
					"fillstyles" : [ {
						"color" : [ -2047489 ],
						"type" : 1
					} ],
					"paths" : [ {
						"fill" : 0,
						"data" : [ ":20k:a0Hja7D7cb0E6c3I3hbsu3c5ebl1cg5hbTj5CybYy5F5cb:0dc0hbi1jW0pa1Imb7Dk3H3cb9Cv6F4ebNA7BAb7L:3S1fa:0ha:0fb4cf1e4ca9d6ha:0ha:0paTtb2F8f0P0ja8Cwa2D7ca1Dnb6Is9I6lbg3k6f3qb4k7k4k47caDcaEcb8F5d5L8ia9B0caCdb6D5e0G9laBgaBfba9cw6eb7e4d7i4jb:0l5d0sb5j0p5q50cbSuZ9eaN1dbsu2c5ebq6dh5laUrb1D0c9I2da9C3dbMoA7eb6j1n54c1nbw:6dAb:JdMb1cR4fRbz:2ekbsut0fa:0nb4cH0fHb5h:0h8hb:0dT0fb4D4d:0jatbbjbubb7e:9k4Fb8fb0ltb:jemb8d4c5k7db7d3G6k6Lb3u5P44c14Db6h4C0r0FbjTl1Dbe1G8f9Gb3iZ0r0FbtT4d4Cb9cW6e6Fb0sT20c0Jaa:aeBabAabAahFagGaeGa:CaaAa:EaAEaHQaNVaDIaDIaR7EaAAa:Aa:BaADb4cF4e5Cb0f2H6p5Lb:JeNb7g6E3q1Ia2dOahda8bta4l6kbvc1dcb1e:9gWa0dUb8cU0f9Ebn4Eb3GbV7CV7Haw:bpCxLaxZabCadFaeHa:BacEabCaaAaaCaaDagQaaAa:Aa:AaaCaaDbt:6cHahDa6cHbjTz3Cb4c7B4g7Da:0Ha:0Hb9BT7C1FbR4I3H9Mb1R9F20D0Hba9Ce3Fbo7Go7OaTTb7D3D0L0FbTT4D1Cb1EY6E9Hb7n3D00c0Ha:BaaFa:Da:Va:Da:Da:Fa:Fa:Ca:FaI0IaCLaL1DaBFaQ3Ea6E77Ba:FaAGaAEb8CB1EYbIOI5CaaAacFahKanNa3h6GafFacCabBa:Aa9c3DbnNa7EbSU2C6EbS3E8F4Hb1Ek6Ikb6I:4P1Ea::bgalabw:4cJb1d4C4c1Kb4E8G8L8Gb1E:2K8cb2H8d0R0hb5D1j0S1jbN:0CAb3E7f0P0hbm2DM5Eb2DT7F5Fb5Ci6Fib6H:4M9Fb5CV0GVb5C:0Gvb9E1f0P0hb3D6C1F0JbX5H9C0Ra0TTaB:a8BKa:AaTVaPQaFDaGDaAAa:Jc" ]
					} ],
					"flat" : true,
					"type" : 1
				},
				{
					"bounds" : [ {
						"ymin" : 0,
						"ymax" : 4070,
						"xmin" : 0,
						"xmax" : 3620
					} ],
					"id" : 2,
					"fillstyles" : [ {
						"color" : [ -6736897 ],
						"type" : 1
					} ],
					"paths" : [ {
						"fill" : 0,
						"data" : [ ":20k:a0Hja7D7cb0E6c3I3hbsu3c5ebl1cg5hbTj5CybYy5F5cb:0dc0hbi1jW0pb2Ph0X0jbNA7BAb7L:3S1fa:0ha:0fb4cf1e4ca9d6ha:0ha:0paTtb2F8f0P0ja8Cwa2D7ca1Dnb6Is9I6lbg3k6f3qb4k7k4k47caDcaEcb8F5d5L8ia9B0caCdb6D5e0G9laBgaBfba9cw6eb7e4d7i4jb:0l5d0sb5j0p5q50cbSuZ9eaN1dbsu2c5ebq6dh5laUrb1D0c9I2da9C3dbMoA7eb6j1n54c1nbw:6dAb:JdMb1cR4fRbz:2ekbsut0fa:0nb4cH0fHb5h:0h8hb:0dT0fb4D4d:0jatbbjbubb7e:9k4Fb8fb0ltb:jemb8d4c5k7db7d3G6k6Lb3u5P44c14Db6h4C0r0FbjTl1Dbe1G8f9Gb3iZ0r0FbtT4d4Cb9cW6e6Fb0sT20c0Jaa:aeBabAabAahFagGaeGa:CaaAa:EaAEaHQaNVaDIaDIaR7EaAAa:Aa:BaADb4cF4e5Cb0f2H6p5Lb:JeNb3i8F5u6Ja6cxa4l6kbvc1dcb1e:9gWa0dUb8cU0f9Ebn4Eb3GbV7CV7Haw:bpCxLaxZabCadFaeHa:BabCaeIaaDagQaaAa:Aa:AaaCaaDbt:6cHahDa6cHbjTz3Cb4c7B4g7Da:0Ha:0Hb9BT7C1FbR4I3H9Mb1R9F20D0Hba9Ce3Fbo7Go7OaTTb7D3D0L0FbTT4D1Cb1EY6E9Hb7n3D00c0Ha:BaaFa:Da:Va:Da:Da:Fa:Fa:Ca:FaI0IaCLaL1DaBFaQ3Ea6E77Ba:FaAGaAEb8CB1EYbIOI5CaaAacFahKanNa3h6GafFacCabBa:Aa9c3DbnNa7EbSU2C6EbS3E8F4Hb1Ek6Ikb6I:4P1Ea::bgalabw:4cJb1d4C4c1Kb4E8G8L8Gb1E:2K8cb2H8d0R0hb5D1j0S1jbN:0CAb3E7f0P0hbm2DM5Eb2DT7F5Fb5Ci6Fib6H:4M9Fb5CV0GVb5C:0Gvb9E1f0P0hb3D6C1F0JbX5H9C0Ra0TTaB:a8BKa:AaTVaPQaFDaGDaAAa:Jc" ]
					} ],
					"flat" : true,
					"type" : 1
				},
				{
					"id" : 3,
					"records" : [ {
						"id" : 1,
						"transform" : "::::::",
						"states" : 1,
						"depth" : 1
					}, {
						"id" : 2,
						"transform" : "::::::",
						"states" : 14,
						"depth" : 1
					} ],
					"type" : 10
				},
				{
					"id" : 3,
					"name" : "#11",
					"matrix" : "::::120f50d",
					"type" : 3,
					"depth" : 1
				},
				{
					"bounds" : [ {
						"ymin" : 0,
						"ymax" : 3187,
						"xmin" : 0,
						"xmax" : 2860
					} ],
					"id" : 4,
					"fillstyles" : [ {
						"color" : [ -10341 ],
						"type" : 1
					} ],
					"paths" : [ {
						"fill" : 0,
						"data" : [ "#6" ]
					} ],
					"flat" : true,
					"type" : 1
				},
				{
					"bounds" : [ {
						"ymin" : 0,
						"ymax" : 3187,
						"xmin" : 0,
						"xmax" : 2860
					} ],
					"id" : 5,
					"fillstyles" : [ {
						"color" : [ -26368 ],
						"type" : 1
					} ],
					"paths" : [ {
						"fill" : 0,
						"data" : [ "#6" ]
					} ],
					"flat" : true,
					"type" : 1
				},
				{
					"id" : 6,
					"records" : [ {
						"id" : 4,
						"transform" : "::::::",
						"states" : 1,
						"depth" : 1
					}, {
						"id" : 5,
						"transform" : "::::::",
						"states" : 14,
						"depth" : 1
					} ],
					"type" : 10
				},
				{
					"id" : 6,
					"name" : "#19",
					"matrix" : "::::020g133c",
					"type" : 3,
					"depth" : 3
				},
				{
					"bounds" : [ {
						"ymin" : 0,
						"ymax" : 3828,
						"xmin" : 0,
						"xmax" : 2952
					} ],
					"id" : 7,
					"fillstyles" : [ {
						"color" : [ -11566 ],
						"type" : 1
					} ],
					"paths" : [ {
						"fill" : 0,
						"data" : [ "#21" ]
					} ],
					"flat" : true,
					"type" : 1
				},
				{
					"bounds" : [ {
						"ymin" : 0,
						"ymax" : 3828,
						"xmin" : 0,
						"xmax" : 2952
					} ],
					"id" : 8,
					"fillstyles" : [ {
						"color" : [ -3407872 ],
						"type" : 1
					} ],
					"paths" : [ {
						"fill" : 0,
						"data" : [ "#21" ]
					} ],
					"flat" : true,
					"type" : 1
				},
				{
					"id" : 9,
					"records" : [ {
						"id" : 7,
						"transform" : "::::::",
						"states" : 1,
						"depth" : 1
					}, {
						"id" : 8,
						"transform" : "::::::",
						"states" : 14,
						"depth" : 1
					} ],
					"type" : 10
				},
				{
					"id" : 9,
					"name" : "#18",
					"matrix" : "::::617h415d",
					"type" : 3,
					"depth" : 5
				},
				{
					"bounds" : [ {
						"ymin" : 0,
						"ymax" : 3581,
						"xmin" : 0,
						"xmax" : 3749
					} ],
					"id" : 10,
					"fillstyles" : [ {
						"color" : [ -5451523 ],
						"type" : 1
					} ],
					"paths" : [ {
						"fill" : 0,
						"data" : [ "#8" ]
					} ],
					"flat" : true,
					"type" : 1
				},
				{
					"bounds" : [ {
						"ymin" : 0,
						"ymax" : 3581,
						"xmin" : 0,
						"xmax" : 3749
					} ],
					"id" : 11,
					"fillstyles" : [ {
						"color" : [ -16493645 ],
						"type" : 1
					} ],
					"paths" : [ {
						"fill" : 0,
						"data" : [ "#8" ]
					} ],
					"flat" : true,
					"type" : 1
				},
				{
					"id" : 12,
					"records" : [ {
						"id" : 10,
						"transform" : "::::::",
						"states" : 1,
						"depth" : 1
					}, {
						"id" : 11,
						"transform" : "::::::",
						"states" : 14,
						"depth" : 1
					} ],
					"type" : 10
				},
				{
					"id" : 12,
					"name" : "#17",
					"matrix" : "::::211f920e",
					"type" : 3,
					"depth" : 7
				},
				{
					"bounds" : [ {
						"ymin" : 0,
						"ymax" : 3911,
						"xmin" : 0,
						"xmax" : 2080
					} ],
					"id" : 13,
					"fillstyles" : [ {
						"color" : [ -3223809 ],
						"type" : 1
					} ],
					"paths" : [ {
						"fill" : 0,
						"data" : [ "#14" ]
					} ],
					"flat" : true,
					"type" : 1
				},
				{
					"bounds" : [ {
						"ymin" : 0,
						"ymax" : 3911,
						"xmin" : 0,
						"xmax" : 2080
					} ],
					"id" : 14,
					"fillstyles" : [ {
						"color" : [ -10788609 ],
						"type" : 1
					} ],
					"paths" : [ {
						"fill" : 0,
						"data" : [ "#14" ]
					} ],
					"flat" : true,
					"type" : 1
				},
				{
					"id" : 15,
					"records" : [ {
						"id" : 13,
						"transform" : "::::::",
						"states" : 1,
						"depth" : 1
					}, {
						"id" : 14,
						"transform" : "::::::",
						"states" : 14,
						"depth" : 1
					} ],
					"type" : 10
				},
				{
					"id" : 15,
					"name" : "#12",
					"matrix" : "::::320e793b",
					"type" : 3,
					"depth" : 9
				},
				{
					"bounds" : [ {
						"ymin" : 0,
						"ymax" : 2640,
						"xmin" : 0,
						"xmax" : 2940
					} ],
					"id" : 16,
					"fillstyles" : [ {
						"color" : [ -6488420 ],
						"type" : 1
					} ],
					"paths" : [ {
						"fill" : 0,
						"data" : [ "#4" ]
					} ],
					"flat" : true,
					"type" : 1
				},
				{
					"bounds" : [ {
						"ymin" : 0,
						"ymax" : 2640,
						"xmin" : 0,
						"xmax" : 2940
					} ],
					"id" : 17,
					"fillstyles" : [ {
						"color" : [ -16744384 ],
						"type" : 1
					} ],
					"paths" : [ {
						"fill" : 0,
						"data" : [ "#4" ]
					} ],
					"flat" : true,
					"type" : 1
				},
				{
					"id" : 18,
					"records" : [ {
						"id" : 16,
						"transform" : "::::::",
						"states" : 1,
						"depth" : 1
					}, {
						"id" : 17,
						"transform" : "::::::",
						"states" : 14,
						"depth" : 1
					} ],
					"type" : 10
				},
				{
					"id" : 18,
					"name" : "#20",
					"matrix" : "::::500c550f",
					"type" : 3,
					"depth" : 11
				},
				{
					"bounds" : [ {
						"ymin" : 0,
						"ymax" : 4235,
						"xmin" : 0,
						"xmax" : 2925
					} ],
					"id" : 19,
					"fillstyles" : [ {
						"color" : [ -13057 ],
						"type" : 1
					} ],
					"paths" : [ {
						"fill" : 0,
						"data" : [ "#5" ]
					} ],
					"flat" : true,
					"type" : 1
				},
				{
					"bounds" : [ {
						"ymin" : 0,
						"ymax" : 4235,
						"xmin" : 0,
						"xmax" : 2925
					} ],
					"id" : 20,
					"fillstyles" : [ {
						"color" : [ -52225 ],
						"type" : 1
					} ],
					"paths" : [ {
						"fill" : 0,
						"data" : [ "#5" ]
					} ],
					"flat" : true,
					"type" : 1
				},
				{
					"id" : 21,
					"records" : [ {
						"id" : 19,
						"transform" : "::::::",
						"states" : 1,
						"depth" : 1
					}, {
						"id" : 20,
						"transform" : "::::::",
						"states" : 14,
						"depth" : 1
					} ],
					"type" : 10
				},
				{
					"id" : 21,
					"name" : "#15",
					"matrix" : "::::020c00s",
					"type" : 3,
					"depth" : 13
				},
				{
					"bounds" : [ {
						"ymin" : 0,
						"ymax" : 4281,
						"xmin" : 0,
						"xmax" : 4866
					} ],
					"id" : 22,
					"fillstyles" : [ {
						"color" : [ -3030786 ],
						"type" : 1
					} ],
					"paths" : [ {
						"fill" : 0,
						"data" : [ "#10" ]
					} ],
					"flat" : true,
					"type" : 1
				},
				{
					"bounds" : [ {
						"ymin" : 0,
						"ymax" : 4281,
						"xmin" : 0,
						"xmax" : 4866
					} ],
					"id" : 23,
					"fillstyles" : [ {
						"color" : [ -13237316 ],
						"type" : 1
					} ],
					"paths" : [ {
						"fill" : 0,
						"data" : [ "#10" ]
					} ],
					"flat" : true,
					"type" : 1
				},
				{
					"id" : 24,
					"records" : [ {
						"id" : 22,
						"transform" : "::::::",
						"states" : 1,
						"depth" : 1
					}, {
						"id" : 23,
						"transform" : "::::::",
						"states" : 14,
						"depth" : 1
					} ],
					"type" : 10
				},
				{
					"id" : 24,
					"name" : "#13",
					"matrix" : "::::20e720c",
					"type" : 3,
					"depth" : 15
				},
				{
					"id" : 25,
					"bold" : true,
					"glyphs" : [
							{
								"unicode" : " ",
								"data" : "",
								"advance" : 5120
							},
							{
								"unicode" : " ",
								"data" : "",
								"advance" : 5120
							},
							{
								"unicode" : "강",
								"data" : ":950m200Pb0K:0T0hb0I0h0I0sa:610jb:0l0i0tb0i0h0t0ha00r:b90b:90b0Za:960Ca760b:b0j:0u0Hb0j0H0j0Ra:40Nb:0J0J0Rb0K0H0U0Ha760B:a:710Db:70B90B70Bc:720M60ib90B:90B90ba:50mb:0l0g0vb0g0i0t0ia570e:b00c:50c0mb0d0m0G60db70E70r70V500cb00Q40p220D710bb0V0j0Y0zb0C0q0e50ca30e90jb2j6w43c6wb6m:17c6Gb230c30M250e430Cb20t00U790b900Dbt0G0f0Tb0c0M0f00Cb0c0P0e10Cbt0Pt0Xb:50F60C40Ib60C90B60L90Bc:30k390lb50g:20n0pb70f0o80k30db10e70b10h70fb90b00d90b10ib:00e90B70hb00C80c10H40fb10E0z80K00db70F0n20N0nb00H:70N0Nb60F0N40K00Db90D0Z50G40Fb70B70C70B70Hb:20J00j90Ob90i80E30z80Ec::40Rb20N:30Y00cb20K90b10S20hb90G20e10L40lb20D10g20D70ob:80h20d20pb20d40g10l60lb90g20e10s20hb10k00c30y00cb10m:30x00Cb30k00C50s30Hb20h30E80l60Lb60d30G60d10Pb:60H60D80Ob60D30G80L50Lb20H30E50S10Hb20K90B30X90Bc",
								"advance" : 20558.18181818182
							},
							{
								"unicode" : "건",
								"data" : ":20x030Ob90B:90B80ba:80mb:0l0g0ub0g0i0t0ia530e:b80c:80c0mb:0l0J50db90E80s10V610cb20P30p300D860bb0W0j0Z70bb0C0p0f20ca10e50jb7k4y65c4yb4m:05c3Gb280c70M250e480Cb60s10U800b020Ebt0F0e0Sb0c0N0f10Cb0c0Q0f40Cbt0Pt0Zb:60F60C50Ib60C80B60L80Bc:510e70Kb70B:70B70ba:730ea690C:b0J:0S0gb0I0g0I0ra:50nb:0j0i0qb0i0h0s0ha690c:a:590eb:0z70b0za20r:b70b:70b0Za:270Mb:70B70B70Bc:350K840lb0J:0S0ib0I0j0I0ta:500db:00h10c30kb20c30c40l30ca650j:b0m:0v0Fb0i0G0i0Sa:50Nb:0J0J0Sb0J0H0U0Ha480I:b0T:90B0Fb0H0F0H70Ba:660Cb:0J0I0Tb0I0I0U0Ic",
								"advance" : 18637.5
							},
							{
								"unicode" : "남",
								"data" : ":40x500Ob0K:0T0ib0I0i0I0sa:230gb:20g00c80jb90b60c80k00db14ew07kwb44d:33iMb50k0C50w0Nb00l0J60w0Zb70k0Q90t10Db0jT0r0Ib0g0H0e0Ta0U30MbT0J0N0Ob6H6C6P6Cb2C:4Ffb60I0t50S30cb90I0n50S0ub50I0g10R0ib87Bg51Egb29E:69I7Bb0VT00C0Gb0H0E0H0Za:390Fb:0J0J0Sb0I0I0U0Ic:730i00Gb70B:70B70ba:320jb:90b70b90ba20r:b70b:70b70Ba:770Ca780b:b0j:0t0Hb0i0H0i0Sa:30Nb:0J0I0Qb0J0G0T0Ga780B:a:630Db:70B70B70Bc:20W780mb0q:0v0eb0e0f0e0va:930bb:0r0E0vb0E0d0V0da840F:b0P:0U0Db0E0D0E0Va:950Bb:0P0e0Ub0e0D0u0Dc:40K80Rb80G:20K50cb40C50c40C20ka:300db:00h20c30kb20c30c40l30ca030i:b80g:20k30Cb40c30C40c00Ka:310Db:10H20C50Kb20C40C40L40Cc",
								"advance" : 19500
							},
							{
								"unicode" : "대",
								"data" : ":700b580Nb70G:70J90bb00C80b00C00ja:690ib:10g80c20jb80c10c20k50cb13e0d33k0db10c:47fJb00j0C20t0Kb10j0I40s0Vb30i0M10p20Cb0j0D0v0Lb0m0H0i70Ba0Y50Lb0D0P0P0Tb5FT2MTb7F:7Mtb70E0l40M0wb70G0j60O0qb90G0g80N0ib5Qe33Ceb74D:97G5Db90C0D00E0Mb0K0I0K20Da:480Gb:50C90c50Ca560d:b90b:90b0Za:10Nb:90B90B90Bc:090g20Pb90B:90B70ba:250ga00S:a:880Fb:70B70B70Ba80P:b80B:80B70ba:750qb:90b80b90ba80p:b70b:70b90Ba:910Ha00s:a:690ib:70b70b70ba80q:b70b:70b70Ba:900Rb:70B70B70Bc",
								"advance" : 18990
							},
							{
								"unicode" : "등",
								"data" : ":830d810Ob70G:20K80bb50C70b50C50ja:060db:10g30c80jb20c70c40k70ca960j:b0j:0q0Gb0h0G0h0Xa:70Mb:0P0I0Tb0H0E0X0Ea590I:b0V:00C0Jb0I0J0I0Za:60Vb:40C90c40Ca490i:b80b:80b90Ba:90Mb:70B80B70Bc:930N620hb90B:90B90ba:70mb:0l0h0vb0h0i0u0ia810q:b0k:0u0Jb0j0K0j0Ua:70Mb:0J0J0Tb0J0I0U0Ic:910H120eb50t:090c20eb30j30e30j60lb:20g30J40lb40J20e090C20eb40T:080C20Eb30J20E30J40Lb:30G30j60Lb40j20E080c20Ec::00Rb110C:780D50ib70P50i70P10zb:80p70p20zb70p50i780d50ib120c:790d50Ib70p40I70p20Zb:60P70P10Zb70P50I790D50Ic",
								"advance" : 20970
							},
							{
								"unicode" : "로",
								"data" : ":650c200Ob0K:0S0ib0H0h0H0ra:70mb:0j0h0tb0h0i0s0ia640i:b0u:0z0cb0e0c0e0za:90ob:0w0E80bb0E0e0Z0ea520H:b50D:40G0eb80B0e50D0ub0P0o0V10db0F0y0F60fa:300cb:10d0f60fb0f0z0v20db0q0q50d0wb90b0f40g0fa670c:a:050ca760G:b0M:0U0kb0H0j0H0va:90lb:0j0h0ub0h0j0u0ja830q:b0k:0u0Jb0j0K0j0Ua:90Lb:0J0J0Ub0J0L0U0La720G:a:050Ca270e:b0h:0q0Hb0i0H0i0Ra:80Mb:0J0H0Qb0H0G0R0Ga160J:b0U:0Z0Eb0E0F0E80Ba:20Pb:0T0d0Xb0d0D0y0Da540h:b60h:70k80Bb00c80B00c80Ja:310Cb:00H00C80Jb10C80B70K80Bc",
								"advance" : 20990
							},
							{
								"unicode" : "림",
								"data" : ":40x440Ob0K:0T0gb0I0g0I0qa:40mb:0j0i0rb0i0h0t0ha690e:b0u:0y0db0d0d0d70ba:60ob:0v0D0zb0D0d0Y0da850D:b60F:40I70bb70B0z70B00ia:420cb:60f90b40ib80b90b80j30cb23fw88lwb99d:22jMb30l0C60x0Kb30l0H90w0Wb60k0N00u30Cb0jT0r0Kb0h0I0f0Sa0T50LbT0M0M0Pb2GR7MRb3D:3Hhb40H0o80Q0yb40I0j30S0qb80I0h70S0jb00Ej80Ijb80D:40IJb90C:90C50Ca:20Pb:0R0f0Xb0g0E0y0Ea750d:b60f:70i80Bb20c90B20c50Ja:070Cb:20G80B30Jb90B20C90J20Cc:220e60Gb0Z:0Z70ba:930jb:90b0z90ba30r:b0z:0z70Ba:950Jb:70B0Z70Bc:60W400nb0p:0w0eb0f0e0f0ua:80vb:0r0E0vb0F0d0X0da720F:b0P:0U0Db0E0D0E0Va:00Wb:0P0e0Tb0e0D0u0Dc:40K90Rb80G:20K40cb40C40c40C20ka:660cb:00h20c30kb20c30c40l30ca930h:b80g:10k30Cb40c30C40c10Ka:660Cb:20H20C50Kb10C30C60L30Cc",
								"advance" : 17180
							},
							{
								"unicode" : "서",
								"data" : ":880e200Ob0J:0T0jb0I0i0I0ub0d20r0O370cb0T50o10G040cb70E80p10O160cb50I70n80V700bb50C30c0F10fa60i00ib0q0q56c0qb5q:64c0Ob50e50D20k50Jb60e00F80j30Mb20e30G90i30Ob80d00H40h60Pb0y80f80f10nb30d20g40i10nb10e90f80j80lb60e90e70j80ib5r2m39c2mbu:1dBb0rT80b0Qa60h40Jb90b10D0D60Fb80F30E50M10Mb80F80G60L90Pb90E10I20J00Sb30D00J10F80Sb70c10U70c630Db:0L0I0Ub0H0I0R0Ia20R0Gc:250i00Jb0Z:0Z70ba:100fa220D:b0J:0S0gb0J0g0J0ra:50nb:0j0j0rb0i0i0s0ia220d:a:830jb:70b0z70ba30r:b0z:0z70Ba:900Rb:70B0Z70Bc",
								"advance" : 19031.40625
							},
							{
								"unicode" : "송",
								"data" : ":790h200Pb50C:90C30cb0K40j40E50rb30D10h90K40nb70G20f80R00kb00K80d60Y70hb0N0d0R0qb0D0l:0va50e10mb8f6o95b6ob9j:5y6Cb00v30E880c20Ob90p90I40z10Xb90d20g40l40mb40g30f20p30kb80h00e10r50hb20i50c60q90db5fk2lkb5z:48c1Wa10f50Lb0d0KJ0Vb0E0K0Q0Ob10J0Y10T70Fb00J20D60R70Ib60H50E30O30Lb60F70F90I50Nb0d0S0e80Cbj0T0c00Db:90B90B90Ba10P0Fc:0I330fb80B:80B90ba:30xa740G:b90B:90B10ca:50mb:0l0h0vb0h0i0u0ia810q:b0k:0u0Jb0j0K0j0Ua:50Mb:0J0J0Ub0J0J0U0Ja800G:a:30Xb:0M0I0Ub0I0H0V0Hc:00H760gb50t:090c30eb30j40e30j70lb:20g30J60lb40J50e090C50eb40T:080C50Eb30J40E30J60Lb:30G30j70Lb40j30E080c30Ec::00Rb110C:780D60ib70P60i70P20zb:80p70p30zb70p60i780d60ib120c:790d60Ib70p50I70p30Zb:60P70P20Zb70P60I790D60Ic",
								"advance" : 20970
							},
							{
								"unicode" : "신",
								"data" : ":940e590Ob0J:0U0lb0J0k0J0yb:40p90B940bb00C00m90H70wb80E60j40N30sb60H70h10T50pb0R0l0W80bb0E0o0o80ca40h60ib0l0n70b0rb8bh1fhb3m:49c8Lb50n80I20y00Ub60j10K80q70Xb90f70l50q20wb50j40j40w80pb1l6f6v6fb1r:14c6Sa70g00Kb0w30C0H90Db90E10C50L20Hb50F10E60L70Kb00F50F90J40Nb90D90G40G50Pb0n20G0v10Ob0g90G0g50Pb:00C70B00Ca00R0Kc:660h10Fb0Z:0Z70ba:270mb:80b0z80ba30r:b0z:0z0Za:290Mb:70B0Z70Bc:390K720lb0J:0T0ib0I0i0I0ta:660db:00h20c30kb20c30c40l30ca730j:b0j:0s0Fb0j0F0j0Sa:50Nb:0J0J0Sb0I0H0S0Ha520I:b0W:10C0Fb0H0F0H70Ba:820Cb:0K0J0Tb0I0I0U0Ic",
								"advance" : 19130
							},
							{
								"unicode" : "영",
								"data" : ":540n710Ka:30wa210C:b0j30C0o80Fb0e40C0e10Gb:30D0J40Ic:920D00Qb30l:70s20gb40g30g40g60sb:50l40G70sb40G30g70S30gb90K:20S30Gb40G20G40G70Sb:30L40g60Sb30g20G20s20Gc:300h790Bb70B:70B70ba:30wa950C:b60F60H00Q80Mb50J20E80W20Eb80J:90S70cb20I60c60O00jb50F30f00J00ob60C70h60C60rb:20j60c80rb50c60h00j90nb40f20f60o70ib10i50c90s50cb70k:10u70Cb40i70C00p50Ja320d:a:40xb:90b70b90ba20r:b70b:70b90Ba:870Jb:70B70B70Bc:710E580mb30g:10n0mb70f0m90k90cb10e0z10h40fb90b70c90b90hb:90d90B50hb00C50c10H00fb20E0y90K70cb80F0l10N0lb00H:80N0Lb70F0L70K70Cb90D0Y50G00Fb70B60C70B50Hb:30J00j40Ob10j10E70z10Ec::70Rb20N:40Y80bb30K80b20S90gb90G10e10L20lb20D10g20D70ob:80h20d90ob20d20g10l20lb90g00e20s80gb20k80b40y80bb10m:30x80Bb30k80B50s90Gb20h10E80l30Lb60d10G60d70Ob:90H60D90Ob60D10G80L10Lb20H00E50S80Gb20K80B30X80Bc",
								"advance" : 18000
							},
							{
								"unicode" : "울",
								"data" : ":630i660Nb80h:30p0nb60g0n10m80cb60e0w60h60eb10c30c10c00gb:50c10C60fb00C20c60H60eb50E0w10M80cb50G0n30P0nb10I:50P0Nb50G0O00M80Cb60E0X60H60Eb10C10C10C60Fb:70C10c00Gb00c30C60h60Eb50e0X00m80Cb40g0N50p0Nc::60Qb60O:760B0zb00L70b20T40gb20H70d50L00kb30D40f30D80mb:70g30d20nb30d50f50l20kb20h70d20t30gb00l70b760b70bb50o:750b70Bb00l0Z20t30Gb20h70D50l20Kb30d50F30d20Nb:40G30D80Mb30D30F50L00Kb20H70D20T40Gb00L0Z750B0Zc:950H190hb0M:0U0ib0H0i0H0ua:70lb:90b90b90ba740g:a:20oa840D:b0J:0S0hb0I0h0I0ra:70mb:0k0i0sb0i0h0s0ha790i:b0s:0w0db0d0d0d70ba:70eb:0u0D0xb0D0c0U0ca680H:b00H:70J80bb80B90b80B50ia:30wb:60f90b40ib80b90b80j90ba410k:b0h:0r0Ib0k0I0k0Ta:30Mb:0L0K0Tb0J0H0T0Ha180J:b0S:0W0Db0D0C0D0Ua:40Fb:0R0d0Wb0d0E0u0Ea620h:b40h:20k0Yb70b0X70b60Ia:60Wb:90F70B50Ib80B0Y20K0Ya770C:a:20Oa740g:b0k:0u0Ib0j0I0j0Ta:70Lb:0J0J0Tb0J0J0U0Jc",
								"advance" : 20990
							},
							{
								"unicode" : "전",
								"data" : ":20y890Nb10C:10C90ba:70mb:0l0g0vb0h0i0v0ia040e:b40c:60c0mbj0m0H40cb00C40h30I40qb20F00i70N60qb50H60h00S20pb40J60g70U10mb0R0j0W80bb0E0q0e30ca10f10jb0l0v20c0vb0s:20c0Fb30n00G700b40Pb70l40I10w50Tb10d30d40i10ib20e70d60j90hb40e20d50j50gb00e40c70h30eb5o5g82b5gb1u:48c5Ta80f40Jb0x10D0Q20Fb10D0V00I50Eb90D30C90I00Gb00E80C70I90Gb80D10D40H20Hb70e00H00j10Pb30d10H50f90Ob0g0R0m10Db0f0V0j50Db0j50F30C90Ib30D40C30M40Cc:800e10Mb70B:70B70ba:930da260C:b0J:0S0gb0I0h0I0ra:10nb:0j0i0sb0i0h0s0ha260c:a:430fb:0z70b0za20r:b70b:70b0Za:290Mb:70B70B70Bc:370K880lb0J:0S0ib0I0j0I0ta:460db:00h10c30kb20c30c40l30ca670j:b0k:0t0Fb0i0G0i0Sa:50Nb:0J0I0Sb0I0H0T0Ha480I:b0V:10C0Fb0H0F0H70Ba:620Cb:0J0I0Tb0I0I0V0Ic",
								"advance" : 18946.666666666668
							},
							{
								"unicode" : "종",
								"data" : ":710c810Ob70B:70B0ya:50mb:80b70b80ba390g:b30d:40c0ob0I0n60C0zb80H70d90S10ib00K40d90V30hb90K90c00X10gb10L20c70V00eb0Jt0S0ob0J0l0F0xa90c90kb2i0z60c0zb2e:0kJb70r50C580c40Hb10q00E200c90Jb00h0y30q80db40i0x90r60db50i0w50r00db00i0r80p00cb9dl6ilb4j:4s2Fb0l0I0p0Ta10d20Kb0f0QT70Bb0H0J0Y0Lb70E0H40L0Ub80F0L80M0Zb90F0O50M90Bb50F0N90K90Bb60g10D70m10Hb00f00D30j10Hb0r0R70d50Eb90b70C90b00Hb:90D10E40Gb20E0Z20M0Zc:730D390fb80B:80B90ba:30ua740G:b90B:90B20ca:90lb:0k0h0ub0h0j0u0ja810q:b0k:0u0Jb0j0J0j0Ua:90Lb:0L0N0Vb0O0J0Y0Ja640G:a:30Ub:90B80B90Bc:10I430gb50t:100c50eb40j40e40j10lb:80f40J10lb50J40e100C40eb40T:090C40Eb40J30E40J10Lb:70F40j10Lb50j50E090c50Ec::80Qb30O:740B70bb10L0z40T30gb30H60d60L10kb30D60f30D10nb:80g30d40nb30d50f60l20kb30h80d40t30gb10l0z740b0zb40o:750b0Zb10l0Y40t30Gb30h70D60l20Kb30d60F30d40Nb:50G30D10Nb30D50F60L10Kb30H70D40T30Gb10L70B750B70Bc",
								"advance" : 20970
							},
							{
								"unicode" : "체",
								"data" : ":540c090Ob0J:0U0hb0K0h0K0va:90kb:0n0k0wb0k0h0u0ha260d:b0o:0x0Jb0i0K0i0Wa:50Kb:0L0J0Vb0J0J0W0Jc:770E030cb0Y:0Y80ba:70lb:0m0f0vb0f0i0q0ia240d:b70c:40c0mbT0n0L80cb30C60h70H40qb40E80h50L30qb00G50h70O40pb80H90g80R50nb0P0j0R80bbT0s0h10ca60g60ib8h2m9w2mbt:1dBb0sT10c0Kb70k50G80u80Pb20j20I80r60Sb10g00i60o30qb50h30h90o60mb0p0j50c0kblaxab3p:6y1Ma00h80Ib0m0O0m00Cb:0O0W20Cb30C0X50G00Fb20D60C70H90Gb50D30D70H90Hb20D60D50G10Ib20e80G20i10Pb00d30H00g90Pb0d0L0l10Db0g90B0g50Db:10E90C50Gb90C0W90L0Wc:340d810Cb10C:10C0za:300ga90U:b0J:0S0gb0J0g0J0qa:10nb:0k0j0sb0i0h0s0ha90u:a:560hb:90b10c90ba60p:b0z:0z90Ba:780Qb:0Z0Z0Zc:50u30Cb90B:90B70ba:940rb:70b70b70ba80q:b70b:70b70Ba:940Rb:70B70B70Bc",
								"advance" : 19603.333333333332
							},
							{
								"unicode" : "파",
								"data" : ":010h700La:260hb40N0h970B0la:380Hc:910C20Sb0K:0W0jb0L0j0L0wa:60lb:0m0l0wb0l0j0w0ja30p:a:400ha60I:b90D:80ITb90B:90B90ba:10mb:0l0h0ub0i0i0u0ib27j7b76t7bb24e:54jGb00pT140c0Ib30o0G970b0Tb30n0N60z20Cb0jT0s0Jb0i0H0e0Ya0R90LbT0J0N0Ob3I6C0Q6Cb1C:0Ffb10E0h40J0mb40E0e90J0ia:090Ha10n:b0m:0v0Ib0i0I0i0Ua:90Lb:0O0I0Xb0I0I0V0Ic:60v80Ob70B:70B70ba:900rb:70b70b70ba20r:b70b:70b70Ba:690Ia780b:b0j:0t0Hb0i0H0i0Ra:60Nb:0J0I0Qb0J0G0T0Ga780B:a:250Gb:70B70B70Bc",
								"advance" : 21140
							},
							{
								"unicode" : "포",
								"data" : ":710k940La:440ea230D:a:440Ec:350D90Rb0J:0V0jb0L0k0L0ua:30lb:0n0l0xb0l0k0v0ka50t:a:440ea40X:b0J:0U0kb0K0j0K0ta:30lb:0n0k0yb0k0j0u0ja680e:a:560ca740G:b0M:0U0ib0H0j0H0va:50mb:0j0h0ub0h0j0u0ja830q:b0k:0u0Jb0j0K0j0Ua:50Mb:0J0J0Ub0J0J0U0Ja740G:a:560Ca680e:b0l:0u0Ib0i0J0i0Xa:50Lb:0L0I0Ub0I0J0U0Ja40X:a:440Ea50t:b0l:0u0Jb0i0I0i0Wa:50Lb:0L0I0Vb0I0I0U0Ic",
								"advance" : 20990
							},
							{
								"unicode" : "학",
								"data" : ":010d990Ob0H:0S0hb0K0h0K0va:70kb:0p0k0yb0k0h0s0ha350e:b0p:0z0Lb0i0K0i0Wa:30Kb:0L0J0Vb0K0J0Y0Jc:150H60yb0L:0X0kb0K0k0K0ua:50kb:0l0j0vb0k0k0w0ka850j:b0m:0v0Ib0i0J0i0Va:70Kb:0L0I0Vb0I0J0V0Jc:260E230db80i:00p70db10f60d10f70kb:20g20F10lb30F90d90O90db70D:80H0Mb10D0M10G60Cb00C0V60D30Eb0P10C0P80Fb:10G20f70Kb30f70D90o70Dc::80Qb20I:30Q0zb10H0y00N10gb00F50d50I70jb40C30f40C80mb:60g40c00nb50c30f50i90jb90e60d90m20gb00h0y20q0yb40i:50q0Yb10h0Z10n20Gb10f60D50i90Jb50c40F50c00Nb:50G50C80Mb40C20F40I70Jb90E60D10N10Gb20H0Z40Q0Zc:170g220Eb70B:70B70ba:920kb:00c70b00ca20r:b70b:70b80Ba:470Da760b:b0l:0v0Hb0i0H0i0Ra:60Nb:0J0I0Qb0J0G0V0Ga760B:a:510Eb:70B70B70Bc:760K310mb0J:0S0gb0I0h0I0ta:10nb:0j0i0rb0i0g0s0ga260i:b0u:00c0fb0i0f0i90ba:520cb:0j0i0sb0i0i0v0ia40q:b0l:0u0Ib0j0I0j0Sa:360Db:80G00C10Kb00C30C80J30Cc",
								"advance" : 20810
							},
							{
								"unicode" : "홍",
								"data" : ":620f240Pb0I:0T0hb0K0h0K0wa:60kb:0o0k0wb0k0h0t0ha950e:b0o:0x0Jb0i0J0i0Wa:20Kb:0M0J0Wb0J0J0W0Jc:030J80xb0J:0V0jb0K0j0K0ta:90jb:0l0j0xb0k0k0u0ka150n:b0l:0v0Ib0i0J0i0Xa:10Kb:0L0I0Ub0J0I0V0Ic:090G910cb80o:10x30cb30h20c30h20hb:70d30H90gb30H30c10X30cb50O:80W30Cb30H20C30H90Gb:00E30h20Hb30h30C80w30Cc::80Ob90M:10X0wb30J0v00Q90eb80F70c20J60hb30C90d30C50jb:40i40j00qb50j50g220c40ia:20ja700G:b90B:90B30ca:10lb:0j0h0tb0h0k0u0ka810q:b0k:0u0Kb0j0J0j0Ta:10Lb:0J0N0Vb0O0K0Y0Ka680G:a:20Jb90u0S270c30Ib70j50G70j10Qb:60E30C50Jb40C90D20J60Hb70F70C10Q90Eb30J0W30X0Wc::690jb50t:100c80cb40j80c40j50hb:70d40J40hb50J70c100C70cb40T:090C70Cb40J70C40J40Hb:70D40j50Hb50j80C090c80Cc::80Pb190C:850D00hb60P00h60P90tb:90l60p00ub60p10h850d10hb200c:860d10Hb60p10H60p00Ub:90L60P90Tb60P00H860D00Hc",
								"advance" : 20970
							} ],
					"name" : "NanumGothic Bold",
					"descent" : 3380,
					"emSquareSize" : 20480,
					"type" : 5,
					"ascent" : 16420
				},
				{
					"sharpness" : 0,
					"bounds" : {
						"ymin" : 6,
						"ymax" : 408,
						"xmin" : 20,
						"xmax" : 694
					},
					"id" : 26,
					"gridFit" : 2,
					"matrix" : "#1",
					"thickness" : 0,
					"records" : [ {
						"text" : "강남",
						"glyphs" : "bb",
						"height" : 360,
						"color" : -16777216,
						"font" : 25,
						"y" : 340,
						"x" : ":38c"
					} ],
					"type" : 6,
					"mode" : 1
				},
				{
					"id" : 26,
					"matrix" : "::::685g343g",
					"type" : 3,
					"depth" : 17
				},
				{
					"sharpness" : 0,
					"bounds" : {
						"ymin" : 6,
						"ymax" : 410,
						"xmin" : 7,
						"xmax" : 670
					},
					"id" : 27,
					"gridFit" : 2,
					"matrix" : "#1",
					"thickness" : 0,
					"records" : [ {
						"text" : "홍대",
						"glyphs" : "tO",
						"height" : 360,
						"color" : -16777216,
						"font" : 25,
						"y" : 340,
						"x" : ":38c"
					} ],
					"type" : 6,
					"mode" : 1
				},
				{
					"id" : 27,
					"matrix" : "::::346d233d",
					"type" : 3,
					"depth" : 18
				},
				{
					"sharpness" : 0,
					"bounds" : {
						"ymin" : 6,
						"ymax" : 408,
						"xmin" : 28,
						"xmax" : 1027
					},
					"id" : 28,
					"gridFit" : 2,
					"matrix" : "#1",
					"thickness" : 0,
					"records" : [ {
						"text" : "영등포",
						"glyphs" : "lFl",
						"height" : 360,
						"color" : -16777216,
						"font" : 25,
						"y" : 340,
						"x" : "#9"
					} ],
					"type" : 6,
					"mode" : 1
				},
				{
					"id" : 28,
					"matrix" : "::::50z958e",
					"type" : 3,
					"depth" : 19
				},
				{
					"sharpness" : 0,
					"bounds" : {
						"ymin" : 6,
						"ymax" : 403,
						"xmin" : 14,
						"xmax" : 651
					},
					"id" : 29,
					"gridFit" : 2,
					"matrix" : "#1",
					"thickness" : 0,
					"records" : [ {
						"text" : "신림",
						"glyphs" : "kC",
						"height" : 360,
						"color" : -16777216,
						"font" : 25,
						"y" : 340,
						"x" : ":38c"
					} ],
					"type" : 6,
					"mode" : 1
				},
				{
					"id" : 29,
					"matrix" : "::::900d754g",
					"type" : 3,
					"depth" : 20
				},
				{
					"sharpness" : 0,
					"bounds" : {
						"ymin" : 6,
						"ymax" : 408,
						"xmin" : 7,
						"xmax" : 694
					},
					"id" : 30,
					"gridFit" : 2,
					"matrix" : "#1",
					"thickness" : 0,
					"records" : [ {
						"text" : "송파",
						"glyphs" : "jg",
						"height" : 360,
						"color" : -16777216,
						"font" : 25,
						"y" : 340,
						"x" : ":38c"
					} ],
					"type" : 6,
					"mode" : 1
				},
				{
					"id" : 30,
					"matrix" : "::::490i432f",
					"type" : 3,
					"depth" : 21
				},
				{
					"sharpness" : 0,
					"bounds" : {
						"ymin" : 13,
						"ymax" : 409,
						"xmin" : 7,
						"xmax" : 689
					},
					"id" : 31,
					"gridFit" : 2,
					"matrix" : "#1",
					"thickness" : 0,
					"records" : [ {
						"text" : "종로",
						"glyphs" : "oH",
						"height" : 360,
						"color" : -16777216,
						"font" : 25,
						"y" : 340,
						"x" : ":38c"
					} ],
					"type" : 6,
					"mode" : 1
				},
				{
					"id" : 31,
					"matrix" : "::::170f893d",
					"type" : 3,
					"depth" : 22
				},
				{
					"id" : 32,
					"name" : "Times New Roman",
					"emSquareSize" : 20480,
					"type" : 5
				},
				{
					"sharpness" : 0,
					"bounds" : {
						"ymin" : 6,
						"ymax" : 408,
						"xmin" : 23,
						"xmax" : 1212
					},
					"id" : 33,
					"gridFit" : 2,
					"matrix" : "#1",
					"thickness" : 0,
					"records" : [ {
						"text" : "대학로",
						"glyphs" : "enL",
						"height" : 360,
						"color" : -16777216,
						"font" : 25,
						"y" : 340,
						"x" : "#9"
					} ],
					"type" : 6,
					"mode" : 1
				},
				{
					"id" : 33,
					"matrix" : "::::250g38v",
					"type" : 3,
					"depth" : 23
				},
				{
					"sharpness" : 0,
					"bounds" : {
						"ymin" : 6,
						"ymax" : 408,
						"xmin" : 25,
						"xmax" : 670
					},
					"id" : 34,
					"gridFit" : 2,
					"matrix" : "#1",
					"thickness" : 0,
					"records" : [ {
						"text" : "건대",
						"glyphs" : "cb",
						"height" : 360,
						"color" : -16777216,
						"font" : 25,
						"y" : 340,
						"x" : ":38c"
					} ],
					"type" : 6,
					"mode" : 1
				},
				{
					"id" : 34,
					"matrix" : "::::130h653d",
					"type" : 3,
					"depth" : 24
				},
				{
					"bounds" : [ {
						"ymin" : 0,
						"ymax" : 2644,
						"xmin" : 0,
						"xmax" : 3230
					} ],
					"id" : 35,
					"fillstyles" : [ {
						"color" : [ -7086849 ],
						"type" : 1
					} ],
					"paths" : [ {
						"fill" : 0,
						"data" : [ "#7" ]
					} ],
					"flat" : true,
					"type" : 1
				},
				{
					"bounds" : [ {
						"ymin" : 0,
						"ymax" : 2644,
						"xmin" : 0,
						"xmax" : 3230
					} ],
					"id" : 36,
					"fillstyles" : [ {
						"color" : [ -16741684 ],
						"type" : 1
					} ],
					"paths" : [ {
						"fill" : 0,
						"data" : [ "#7" ]
					} ],
					"flat" : true,
					"type" : 1
				},
				{
					"id" : 37,
					"records" : [ {
						"id" : 35,
						"transform" : "::::::",
						"states" : 1,
						"depth" : 1
					}, {
						"id" : 36,
						"transform" : "::::::",
						"states" : 14,
						"depth" : 1
					} ],
					"type" : 10
				},
				{
					"id" : 37,
					"name" : "#16",
					"matrix" : "::::76e56d",
					"type" : 3,
					"depth" : 25
				},
				{
					"sharpness" : 0,
					"bounds" : {
						"ymin" : 2,
						"ymax" : 409,
						"xmin" : 13,
						"xmax" : 1447
					},
					"id" : 38,
					"gridFit" : 2,
					"matrix" : "#1",
					"thickness" : 0,
					"records" : [ {
						"text" : "서울",
						"glyphs" : "id",
						"height" : 360,
						"color" : -16777216,
						"font" : 25,
						"y" : 340,
						"x" : ":38c"
					}, {
						"text" : " ",
						"glyphs" : ":",
						"height" : 360,
						"color" : -16777216,
						"font" : 25,
						"y" : 340,
						"x" : "76f"
					}, {
						"text" : "전체",
						"glyphs" : "nb",
						"height" : 360,
						"color" : -16777216,
						"font" : 25,
						"y" : 340,
						"x" : "77g38c"
					} ],
					"type" : 6,
					"mode" : 1
				},
				{
					"id" : 38,
					"matrix" : "::::25o73p",
					"type" : 3,
					"depth" : 27
				},
				{
					"classes" : [ {
						"ns" : 5,
						"cinit" : 0,
						"ctraits" : [],
						"name" : 3,
						"init" : 11,
						"traits" : [ {
							"writable" : true,
							"name" : 5,
							"value" : 0,
							"type" : 6,
							"kind" : "#2"
						}, {
							"writable" : true,
							"name" : 7,
							"value" : 0,
							"type" : 6,
							"kind" : "#2"
						}, {
							"writable" : true,
							"name" : 8,
							"value" : 0,
							"type" : 6,
							"kind" : "#2"
						}, {
							"writable" : true,
							"name" : 9,
							"value" : 0,
							"type" : 6,
							"kind" : "#2"
						}, {
							"writable" : true,
							"name" : 10,
							"value" : 0,
							"type" : 6,
							"kind" : "#2"
						}, {
							"writable" : true,
							"name" : 11,
							"value" : 0,
							"type" : 6,
							"kind" : "#2"
						}, {
							"writable" : true,
							"name" : 12,
							"value" : 0,
							"type" : 6,
							"kind" : "#2"
						}, {
							"writable" : true,
							"name" : 13,
							"value" : 0,
							"type" : 6,
							"kind" : "#2"
						}, {
							"writable" : true,
							"name" : 14,
							"value" : 0,
							"type" : 6,
							"kind" : "#2"
						}, {
							"name" : 15,
							"value" : 1,
							"kind" : "#0"
						}, {
							"name" : 16,
							"value" : 2,
							"kind" : "#0"
						}, {
							"name" : 17,
							"value" : 3,
							"kind" : "#0"
						}, {
							"name" : 18,
							"value" : 4,
							"kind" : "#0"
						}, {
							"name" : 19,
							"value" : 5,
							"kind" : "#0"
						}, {
							"name" : 20,
							"value" : 6,
							"kind" : "#0"
						}, {
							"name" : 21,
							"value" : 7,
							"kind" : "#0"
						}, {
							"name" : 22,
							"value" : 8,
							"kind" : "#0"
						}, {
							"name" : 23,
							"value" : 9,
							"kind" : "#0"
						}, {
							"name" : 24,
							"value" : 10,
							"kind" : "#0"
						} ],
						"supertype" : 4
					} ],
					"methods" : [
							{
								"exceptions" : [],
								"locals" : 1,
								"traits" : [],
								"params" : [],
								"code" : "0DBH",
								"type" : 0,
								"optionals" : []
							},
							{
								"exceptions" : [],
								"locals" : 2,
								"traits" : [],
								"params" : [ 2 ],
								"code" : "0DBdGV0aLCFKGgEsIk8ZAkc\u003d",
								"type" : 1,
								"optionals" : []
							},
							{
								"exceptions" : [],
								"locals" : 2,
								"traits" : [],
								"params" : [ 2 ],
								"code" : "0DBdGV0aLCNKGgEsIk8ZAkc\u003d",
								"type" : 1,
								"optionals" : []
							},
							{
								"exceptions" : [],
								"locals" : 2,
								"traits" : [],
								"params" : [ 2 ],
								"code" : "0DBdGV0aLCRKGgEsIk8ZAkc\u003d",
								"type" : 1,
								"optionals" : []
							},
							{
								"exceptions" : [],
								"locals" : 2,
								"traits" : [],
								"params" : [ 2 ],
								"code" : "0DBdGV0aLCVKGgEsIk8ZAkc\u003d",
								"type" : 1,
								"optionals" : []
							},
							{
								"exceptions" : [],
								"locals" : 2,
								"traits" : [],
								"params" : [ 2 ],
								"code" : "0DBdGV0aLCZKGgEsIk8ZAkc\u003d",
								"type" : 1,
								"optionals" : []
							},
							{
								"exceptions" : [],
								"locals" : 2,
								"traits" : [],
								"params" : [ 2 ],
								"code" : "0DBdGV0aLCdKGgEsIk8ZAkc\u003d",
								"type" : 1,
								"optionals" : []
							},
							{
								"exceptions" : [],
								"locals" : 2,
								"traits" : [],
								"params" : [ 2 ],
								"code" : "0DBdGV0aLChKGgEsIk8ZAkc\u003d",
								"type" : 1,
								"optionals" : []
							},
							{
								"exceptions" : [],
								"locals" : 2,
								"traits" : [],
								"params" : [ 2 ],
								"code" : "0DBdGV0aLClKGgEsIk8ZAkc\u003d",
								"type" : 1,
								"optionals" : []
							},
							{
								"exceptions" : [],
								"locals" : 2,
								"traits" : [],
								"params" : [ 2 ],
								"code" : "0DBdGV0aLCpKGgEsIk8ZAkc\u003d",
								"type" : 1,
								"optionals" : []
							},
							{
								"exceptions" : [],
								"locals" : 1,
								"traits" : [],
								"params" : [],
								"code" : "0DDQZg5gAmYb0GYPTxwC0GYMYAJmG9BmEE8cAtBmDWACZhvQZhFPHALQZgpgAmYb0GYSTxwC0GYLYAJmG9BmE08cAtBmCGACZhvQZhRPHALQZglgAmYb0GYVTxwC0GYFYAJmG9BmFk8cAtBmB2ACZhvQZhdPHAJH",
								"type" : 0,
								"optionals" : []
							},
							{
								"exceptions" : [],
								"locals" : 1,
								"traits" : [],
								"params" : [],
								"code" : "0DDQSQBdHSQA0GYYTx0CRw\u003d\u003d",
								"type" : 0,
								"optionals" : []
							},
							{
								"exceptions" : [],
								"locals" : 1,
								"traits" : [],
								"params" : [],
								"code" : "0DBlAGAeMGAfMGAgMGAhMGAiMGAjMGAEMGAEWAAdHR0dHR0daANH",
								"type" : 0,
								"optionals" : []
							} ],
					"scripts" : [ {
						"init" : 12,
						"traits" : [ {
							"writable" : true,
							"name" : 3,
							"value" : 0,
							"slot" : 1,
							"kind" : "classes"
						} ]
					} ],
					"multinames" : [ {
						"ns" : 1,
						"name" : 2,
						"kind" : 7
					}, {
						"ns" : 2,
						"name" : 4,
						"kind" : 7
					}, {
						"ns" : 3,
						"name" : 6,
						"kind" : 7
					}, {
						"ns" : 4,
						"name" : 8,
						"kind" : 7
					}, {
						"ns" : 1,
						"name" : 10,
						"kind" : 7
					}, {
						"ns" : 4,
						"name" : 11,
						"kind" : 7
					}, {
						"ns" : 1,
						"name" : 12,
						"kind" : 7
					}, {
						"ns" : 1,
						"name" : 13,
						"kind" : 7
					}, {
						"ns" : 1,
						"name" : 14,
						"kind" : 7
					}, {
						"ns" : 1,
						"name" : 15,
						"kind" : 7
					}, {
						"ns" : 1,
						"name" : 16,
						"kind" : 7
					}, {
						"ns" : 1,
						"name" : 17,
						"kind" : 7
					}, {
						"ns" : 1,
						"name" : 18,
						"kind" : 7
					}, {
						"ns" : 1,
						"name" : 19,
						"kind" : 7
					}, {
						"ns" : 1,
						"name" : 20,
						"kind" : 7
					}, {
						"ns" : 1,
						"name" : 21,
						"kind" : 7
					}, {
						"ns" : 1,
						"name" : 22,
						"kind" : 7
					}, {
						"ns" : 1,
						"name" : 23,
						"kind" : 7
					}, {
						"ns" : 1,
						"name" : 24,
						"kind" : 7
					}, {
						"ns" : 1,
						"name" : 25,
						"kind" : 7
					}, {
						"ns" : 1,
						"name" : 26,
						"kind" : 7
					}, {
						"ns" : 1,
						"name" : 27,
						"kind" : 7
					}, {
						"ns" : 1,
						"name" : 28,
						"kind" : 7
					}, {
						"ns" : 6,
						"name" : 29,
						"kind" : 7
					}, {
						"ns" : 7,
						"name" : 31,
						"kind" : 7
					}, {
						"ns" : 7,
						"name" : 32,
						"kind" : 7
					}, {
						"ns" : 1,
						"name" : 43,
						"kind" : 7
					}, {
						"ns" : 1,
						"name" : 44,
						"kind" : 7
					}, {
						"ns" : 1,
						"name" : 45,
						"kind" : 7
					}, {
						"ns" : 1,
						"name" : 46,
						"kind" : 7
					}, {
						"ns" : 2,
						"name" : 47,
						"kind" : 7
					}, {
						"ns" : 4,
						"name" : 48,
						"kind" : 7
					}, {
						"ns" : 4,
						"name" : 49,
						"kind" : 7
					}, {
						"ns" : 4,
						"name" : 50,
						"kind" : 7
					}, {
						"ns" : 4,
						"name" : 51,
						"kind" : 7
					} ],
					"namespacesets" : [],
					"strings" : [ "", "", "void", "flash.events", "MouseEvent",
							"_fla", "MainTimeline", "flash.display",
							"MovieClip", "_fla:MainTimeline", "#18",
							"SimpleButton", "#16", "#20", "#17", "#12", "#19",
							"#15", "#11", "#13", "fl_ClickToGoToWebPage",
							"fl_ClickToGoToWebPage_2",
							"fl_ClickToGoToWebPage_3",
							"fl_ClickToGoToWebPage_4",
							"fl_ClickToGoToWebPage_5",
							"fl_ClickToGoToWebPage_6",
							"fl_ClickToGoToWebPage_7",
							"fl_ClickToGoToWebPage_8",
							"fl_ClickToGoToWebPage_11", "frame1", "flash.net",
							"navigateToURL", "URLRequest",
							"restaurant/list?locName=영등포", "_self",
							"restaurant/list?locName=홍대", "restaurant/list?locName=대학로",
							"restaurant/list?locName=종로", "restaurant/list?locName=건대",
							"restaurant/list?locName=신림", "restaurant/list?locName=강남",
							"restaurant/list?locName=송파", "restaurant/list", "CLICK",
							"addEventListener", "addFrameScript", "Object",
							"EventDispatcher", "DisplayObject",
							"InteractiveObject", "DisplayObjectContainer",
							"Sprite" ],
					"type" : 18,
					"uints" : [ 0 ],
					"ints" : [ 0 ],
					"namespaces" : [ {
						"name" : 1,
						"kind" : "#3"
					}, {
						"name" : 3,
						"kind" : "#3"
					}, {
						"name" : 5,
						"kind" : "#3"
					}, {
						"name" : 7,
						"kind" : "#3"
					}, {
						"name" : 9,
						"kind" : "PROTECTED"
					}, {
						"name" : 5,
						"kind" : "PACKAGE_INTERNAL"
					}, {
						"name" : 30,
						"kind" : "#3"
					} ]
				}, {
					"references" : [ {
						"id" : 0,
						"name" : "_fla.MainTimeline"
					} ],
					"type" : 19
				}, {
					"type" : 2
				} ],
		"fileSize" : 17516,
		"v" : "7.1.1",
		"backgroundColor" : -1,
		"frameSize" : {
			"ymin" : 0,
			"ymax" : 10000,
			"xmin" : 0,
			"xmax" : 12000
		},
		"frameCount" : 1,
		"frameRate" : 24,
		"version" : 10
	};
</script>


</head>
<body>
	<div id="swiffycontainer" style="width: 800px; height: 600px; max-width:90%;max-width:90%;"></div>
	<script>
		var stage = new swiffy.Stage(
				document.getElementById('swiffycontainer'), swiffyobject, {});

		stage.start();
	</script>
</body>
</html>