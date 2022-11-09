
with source as (

    select * from {{ source('raw_github', 'issue_label') }}

),

renamed as (

    select
        issue_id,
        label,
        _fivetran_synced

    from source

)

select * from renamed
