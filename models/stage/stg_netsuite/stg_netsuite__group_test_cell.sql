
with source as (

    select * from {{ source('raw_netsuite', 'group_test_cell') }}

),

renamed as (

    select
        crm_group_id,
        cumulativepct,
        name,
        percentage,
        previouspct,
        test_cell_id

    from source

)

select * from renamed
